# == Schema Information
# Schema version: 20110328133929
#
# Table name: facts
#
#  id         :integer         not null, primary key
#  user_id    :integer
#  ftype       :string(255)
#  question   :string(255)
#  header     :string(255)
#  text       :text
#  created_at :datetime
#  updated_at :datetime
#

class Fact < ActiveRecord::Base
  WESTMINSTER_SHORTER = 'shorter'
  attr_accessible :ftype, :question, :header, :text

  validates :ftype, :presence => true
  validates :question, :presence => true
  validates :header, :presence => true
  validates :text, :presence => true
end
