require File.dirname(__FILE__) + '/../spec_helper'

describe BibleBook do
  describe 'valdations' do
    should_validate_presence_of :num, :name, :chapter_count, :verse_count, :word_count
    should_have_many :bible_chapters
  end

  describe 'unique name' do
    before(:each) do
      Factory.create(:bible_book) 
    end
    should_validate_uniqueness_of :num 
  end

  describe "books between" do 
    before(:each) do
      load_seeds
    end

    it "should return the same book if start and end are the same" do
      books = BibleBook.books_between(2, 2)
      books.length.should eql 1
      books.first.name.should eql 'Exodus'
    end
    
    it "should return books between inclusive" do
      books = BibleBook.books_between(25, 30)
      books.length.should eql 6
      books.collect(&:name).should eql ['Lamentations', 'Ezekiel', 'Daniel', 'Hosea', 'Joel', 'Amos']
    end
  end
end
