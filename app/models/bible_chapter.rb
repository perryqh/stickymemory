# == Schema Information
# Schema version: 20110328133929
#
# Table name: bible_chapters
#
#  id            :integer         not null, primary key
#  bible_book_id :integer
#  chapter_num   :integer
#  verse_count   :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class BibleChapter < ActiveRecord::Base
  attr_accessible :bible_book_id, :chapter_num, :verse_count
  belongs_to :bible_book
  validates :chapter_num, :presence => true
  validates :verse_count, :presence => true
end
