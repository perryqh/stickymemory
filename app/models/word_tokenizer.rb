class WordTokenizer
  attr_reader :fact
  attr_reader :words
  attr_reader :first_letter_text

  delegate :heading, :to => :fact

  def initialize(raw_text)
    @raw_text = raw_text
    @words = []
    @first_letter_text = ''
    parse
  end

  def first_letter_indexes
    @first_letters ||= @words.collect{|w| w[:start]}
  end

  def decorated_full_text
    puts @raw_text
    puts @words.inspect

    ft = @raw_text.clone
    num_chars_inserted = 0
    end_span = "</span>"
    @words.each_with_index do |word, index|
      first_span = "<span class='first' data-word-num='#{index}'>"
      remaining_span = "<span class='rest-of-word' data-word-num='#{index}'>"
      ft.insert(word[:start] + num_chars_inserted, first_span)
      num_chars_inserted += first_span.length
      ft.insert(word[:start] + num_chars_inserted + 1, end_span)
      num_chars_inserted += end_span.length
      ft.insert(word[:start] + num_chars_inserted + 1, remaining_span)
      num_chars_inserted += remaining_span.length
      ft.insert(word[:end] + num_chars_inserted, end_span)
      num_chars_inserted += end_span.length
    end
    ft
  end

  def full_text
    @full_text ||= build_full_text
  end

  private
  def build_first_letter_text
    fls = ''
    full_text_array.each_with_index do |c, index|
      fls << "#{hidden?(index) ? ' ' : c}"
    end
    fls
  end

  def hidden?(index)
    @words.any?{|w| w[:start] < index && w[:end] > index}
  end

  def special_start?(c)
    '&' == c
  end

  def special_end?(c)
    ';' == c
  end

  def parse
    build_first_letters
  end

  def build_full_text
    @raw_text.gsub(/\<h2\>.*\<\/h2\>/, '')
  end

  def full_text_array
    arr = []
    full_text.length.times do |i|
      arr << full_text[i].chr
    end
    arr
  end

  def build_first_letters
    in_tag, in_word, in_special  = false, false, false
    end_word = lambda do |index|
      close_word index
      in_word = false
    end
    if full_text
      full_text_array.each_with_index do |c, index|
        @first_letter_text << c
        if in_word
          if /[^A-Za-z\']/.match(c)
            puts "calling end word for #{c}"
            end_word.call index
          else
            @first_letter_text[-1] = ' '
          end
        end
        if !in_special && special_start?(c)
          in_special = true
        elsif in_special && special_end?(c)
          in_special = false
        elsif in_tag
          in_tag = false if c == '>'
        elsif !in_tag && c == '<'
          in_tag = true
        elsif !in_word && !in_special && /[A-Za-z]/.match(c)
          in_word = true
          start_word(c, index)
        end
      end
    end
    close_word (full_text.length - 1) if @words.length > 0
    @words
  end

  def start_word(c, index)
    @words << {:start => index, :first_letter => c}
  end

  def close_word(close_index)
    @words.last[:end] = close_index unless @words.last[:end]
    previous_end = @words.length == 1 ? 0 : (@words[-2][:end] + 1)
    @words.last[:reveal] = full_text[previous_end..close_index]
  end
end
