# == Schema Information
# Schema version: 20110328133929
#
# Table name: plans
#
#  id                  :integer         not null, primary key
#  user_id             :integer
#  start_bible_book_id :integer
#  end_bible_book_id   :integer
#  start_date          :date
#  end_date            :date
#  created_at          :datetime
#  updated_at          :datetime
#

class Plan < ActiveRecord::Base
  attr_accessor :days_duration
  attr_accessible :user_id, :start_bible_book_id, :end_bible_book_id, :start_date, :end_date

  belongs_to :start_bible_book, :class_name => 'BibleBook', :foreign_key => :start_bible_book_id
  belongs_to :end_bible_book, :class_name => 'BibleBook', :foreign_key => :end_bible_book_id

  has_many :readings

  before_validation(:on => :create) do
    if self.days_duration
      self.days_duration = self.days_duration.to_i
      self.start_date = DateTime.now.to_date
      self.end_date = (DateTime.now + (self.days_duration.to_i - 1)).to_date
    end
  end

  before_save(:on => :create) do
    self.readings = PlanBuilder.new(self).build_readings
  end

  validates :start_bible_book, :presence => true
  validates :end_bible_book, :presence => true
  validates :days_duration, :presence => true
end
