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
  attr_accessible :user_id, :start_bible_book_id, :end_bible_book_id, :start_date, :end_date
end
