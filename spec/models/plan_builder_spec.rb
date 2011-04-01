require File.dirname(__FILE__) + '/../spec_helper'

describe PlanBuilder do
  describe "plan" do
    before(:each) do
      load_seeds
    end

    def test_number_of_verses(book_start_num, book_end_num, duration, expected_number)
      PlanBuilder.new(Factory.create(:plan, :days_duration => duration, :start_bible_book => book_by_num(book_start_num), :end_bible_book => book_by_num(book_end_num))).send(:verses_between).should eql expected_number
    end

    def test_number_of_verses_per_day(book_start_num, book_end_num, duration, expected_number)
      PlanBuilder.new(Factory.create(:plan, :days_duration => duration, :start_bible_book => book_by_num(book_start_num), :end_bible_book => book_by_num(book_end_num))).send(:verses_per_day).should eql expected_number
    end

    it "should calculate number of verses between bible books and verses per day" do
      test_number_of_verses(4, 4, 20, 1288)
      test_number_of_verses_per_day(4, 4, 20, 64) 

      test_number_of_verses(4, 10, 20, 5113) 
      test_number_of_verses_per_day(4, 10, 20, 255)
    end

    it "should build proper 11 day plan" do
      plan = Factory.create(:plan, :start_bible_book => book_by_num(1), :end_bible_book => book_by_num(4), :days_duration => 11)
      plan.start_bible_book.should eql book_by_num(1)
      plan.end_bible_book.should eql book_by_num(4)
      plan.start_date.should eql DateTime.now.to_date
      plan.end_date.should eql((DateTime.now + 10.days).to_date)
      plan.readings.collect{|reading| "#{reading.start_coordinates} - #{reading.end_coordinates}"}.join(', ').should eql("Genesis 1:1 - Genesis 18:33, Genesis 19:1 - Genesis 31:55, Genesis 32:1 - Genesis 45:28, Genesis 46:1 - Exodus 11:10, Exodus 12:1 - Exodus 26:37, Exodus 27:1 - Exodus 39:43, Exodus 40:1 - Leviticus 14:57, Leviticus 15:1 - Numbers 1:13, Numbers 1:14 - Numbers 11:35, Numbers 12:1 - Numbers 24:25, Numbers 25:1 - Numbers 36:13")
    end

    it "should build 1 day play" do
      plan = Factory.create(:plan, :start_bible_book => book_by_num(1), :end_bible_book => book_by_num(1), :days_duration => 1)
      plan.start_bible_book.should eql book_by_num(1)
      plan.end_bible_book.should eql book_by_num(1)
      plan.start_date.should eql DateTime.now.to_date
      plan.end_date.should eql DateTime.now.to_date
      plan.readings.length.should eql 1
      plan.readings.last.end_coordinates.should eql "Genesis 50:26"
      plan.readings.last.reading_date.should eql DateTime.now.to_date
    end

    it "should build proper 1 year plan" do
      plan = Factory.create(:plan, :start_bible_book => book_by_num(1), :end_bible_book => book_by_num(BibleBook.last.num), :days_duration => 365)
      plan.start_bible_book.should eql book_by_num(1)
      plan.end_bible_book.should eql book_by_num(BibleBook.last.num)
      plan.start_date.should eql DateTime.now.to_date
      plan.end_date.should eql((DateTime.now + 364.days).to_date)
      plan.readings.length.should eql 365
      plan.readings.last.end_coordinates.should eql "Revelation 22:21"
      plan.readings.last.reading_date.should eql((DateTime.now + 364.days).to_date)
      #plan.readings.each{|r| puts "#{r.start_coordinates}  -  #{r.end_coordinates}"}
    end
  end

  describe 'next coordinate' do
    before(:each) do
      load_seeds
      @plan = Factory.create(:plan, :start_bible_book => book_by_num(1), :end_bible_book => book_by_num(2), :days_duration => 30)
      @plan_builder = PlanBuilder.new(@plan)
      @book = BibleBook.first
      @next_book = BibleBook.find_by_num(@book.num + 1)
      @plan_builder.stub(:verses_per_day => 10)
      @plan_builder.verse_debt.should eql 0
    end

    it "should build next coordinate when at chapter end" do
      @plan_builder.send(:next_coordinate, {:book => @book, :chapter => 1, :verse => 31}, true).should eql({:book => @book, :chapter => 2, :verse => 1})
    end

    it "should build next coordinate when is_start" do
      @plan_builder.send(:next_coordinate, {:book => @book, :chapter => 1, :verse => 1}, true).should eql({:book => @book, :chapter => 1, :verse => 2})
    end

    it "should build next coordinate when not start" do
      @plan_builder.send(:next_coordinate, {:book => @book, :chapter => 1, :verse => 1}, false).should eql({:book => @book, :chapter => 1, :verse => 11})
    end

    it "should build next coordinate with overlap to next chapter" do
      @plan_builder.send(:next_coordinate, {:book => @book, :chapter => 1, :verse => @book.bible_chapter_by_number(1).verse_count}, false).should eql({:book => @book, :chapter => 2, :verse => 10})
    end

    it "should build next coordinate with overlap to next book" do
      @plan_builder.send(:next_coordinate, {:book => @book, :chapter => @book.chapter_count, :verse => @book.bible_chapter_by_number(@book.chapter_count).verse_count}, false).should eql({:book => @next_book, :chapter => 1, :verse => 10})
    end

    it "should jump to beginning of chapter if within threshold" do
      @plan_builder.send(:next_coordinate, {:book => @book, :chapter => 1, :verse => 18}, false).should eql({:book => @book, :chapter => 1, :verse => 31})
    end

    it "should not jump to end of chapter if not within threshold" do
      @plan_builder.send(:next_coordinate, {:book => @book, :chapter => 1, :verse => 28}, false).should eql({:book => @book, :chapter => 2, :verse => 7})
      @plan_builder.verse_debt.should eql 0
    end

    it "should go forward 10 verses" do
      @plan_builder.send(:next_coordinate, {:book => @book, :chapter => 1, :verse => 21}, false).should eql({:book => @book, :chapter => 1, :verse => 31})
      @plan_builder.verse_debt.should eql 0
    end

    it "should jump to previous end of chapter" do
      @plan_builder.stub(:verses_per_day => 20)
      @plan_builder.send(:next_coordinate, {:book => @book, :chapter => 1, :verse => 13}, false).should eql({:book => @book, :chapter => 1, :verse => 31})
      @plan_builder.verse_debt.should eql 2
    end
  end
end
