require File.dirname(__FILE__) + '/../spec_helper'

describe BibleBook do
  describe 'valdations' do
    should_validate_presence_of :num, :name, :chapter_count, :verse_count, :word_count
    should_have_many :bible_chapters
  end

  describe 'unique name' do
    before(:each) do
      #Factory.create(:bible_book)
    end
    should_validate_uniqueness_of :name
  end
end
