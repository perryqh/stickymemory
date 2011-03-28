# == Schema Information
# Schema version: 20110328133929
#
# Table name: bible_books
#
#  id            :integer         not null, primary key
#  num           :integer
#  name          :string(255)
#  chapter_count :integer
#  verse_count   :integer
#  word_count    :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class BibleBook < ActiveRecord::Base
  attr_accessible :num, :name, :chapter_count, :verse_count, :word_count

  validates :num, :presence => true
  validates :name, :presence => true
  validates :chapter_count, :presence => true
  validates :verse_count, :presence => true
  validates :word_count, :presence => true

  has_many :bible_chapters
end
