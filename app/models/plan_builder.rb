class PlanBuilder
  PREFER_CHAPTER_BREAK_WEIGHT, MINIMUM_VERSES_TO_READ_RATIO = 0.5, 0.3
  attr_accessor :plan, :books_to_divide
  attr_accessor :verse_debt, :days_left, :current_coordinate

  def initialize(plan)
    self.plan = plan
    self.books_to_divide = BibleBook.books_between(plan.start_bible_book.num, plan.end_bible_book.num)
    self.verse_debt = 0
    self.days_left = self.plan.days_duration
  end

  def build_readings
    readings, now, coordinates = [], DateTime.now, nil
    (0..self.plan.days_duration-1).each do |day_num|
      self.days_left = self.plan.days_duration - day_num
      if coordinates
        coordinates[:start] = next_coordinate(coordinates[:end], true)
      else
        coordinates = first_coordinate
      end
      coordinates[:end] = next_coordinate(coordinates[:start], false)

      readings << Reading.new(:reading_date => (now + day_num).to_date, :start_coordinates => coordinate_to_s(coordinates[:start]), :end_coordinates => coordinate_to_s(coordinates[:end]))
    end
    readings
  end

  def first_coordinate
    {:start => {:book => self.books_to_divide.first, :chapter => 1, :verse => 1}}
  end

  def next_coordinate(coordinate, is_start)
    if is_start
      verses_left = 1
    else
      self.current_coordinate = coordinate
      verses_left = self.verses_per_day + self.verse_debt
    end

    book, chapter_num, verse = coordinate[:book], coordinate[:chapter], coordinate[:verse]
    chapter = book.bible_chapter_by_number(chapter_num)

    while verses_left > 0 && book
      if verse == chapter.verse_count
        if chapter_num == book.chapter_count
          book, chapter_num, verse = next_book(book), 1, 1
        else
          chapter_num, verse = (chapter_num + 1), 1
        end
        chapter = book.try(:bible_chapter_by_number, chapter_num)
        verses_left -= 1
      else
        if verses_left > (chapter.verse_count - verse)
          verses_left -= chapter.verse_count - verse
          verse = chapter.verse_count
        else
          verse = verse + verses_left
          verses_left = 0
        end
      end
    end
    favor_chapter_breaks(book, chapter, chapter_num, verse, is_start)
  end

  def favor_chapter_breaks(book, chapter, chapter_num, verse, is_start)
    if book.nil?
      last_book = self.books_to_divide.last
      last_chapter = last_book.bible_chapter_by_number(last_book.chapter_count)
      {:book => last_book, :chapter => last_book.chapter_count, :verse => last_chapter.verse_count}
    else
      unless is_start
        ratio = verse.to_f / chapter.verse_count.to_f

        if ratio < PREFER_CHAPTER_BREAK_WEIGHT
          if chapter_num != 1 && (verse.to_f / self.verses_per_day.to_f) < MINIMUM_VERSES_TO_READ_RATIO
            chapter_num -= 1
            self.verse_debt = verse
            verse = book.bible_chapter_by_number(chapter_num).verse_count
          end
        elsif ratio > (1 - PREFER_CHAPTER_BREAK_WEIGHT)
          self.verse_debt = chapter.verse_count - verse
          verse = chapter.verse_count
        end
      end
      {:book => book, :chapter => chapter_num, :verse => verse}
    end
  end

  def next_book(current_book)
    self.books_to_divide.detect{|book| book.book_num == (current_book.book_num + 1)}
  end

  def coordinate_to_s(coordinate)
    "#{coordinate[:book].name} #{coordinate[:chapter]}:#{coordinate[:verse]}"
  end

  def verses_per_day
    verses_between / self.days_left
  end

  def verses_between
    total_verses - total_already_planned_verses
  end

  def total_verses
    self.books_to_divide.inject(0){|sum, book| sum + book.verse_count}
  end

  def total_already_planned_verses
    if self.current_coordinate
      total = 0
      self.books_to_divide.each do |cur_book|
        break if cur_book.book_num == self.current_coordinate[:book].book_num
        total += cur_book.verse_count
      end
      self.current_coordinate[:book].bible_chapters.each do |cur_chapter|
        break if cur_chapter.chapter_num == self.current_coordinate[:chapter]
        total += cur_chapter.verse_count
      end
      total += self.current_coordinate[:verse]
    else
      0
    end
  end
end
