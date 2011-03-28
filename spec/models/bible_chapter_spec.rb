require File.dirname(__FILE__) + '/../spec_helper'

describe BibleChapter do
  describe 'validations' do
    should_belong_to :bible_book
    should_validate_presence_of :chapter_num, :verse_count
  end
end
