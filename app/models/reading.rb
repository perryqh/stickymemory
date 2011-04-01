# == Schema Information
# Schema version: 20110328133929
#
# Table name: readings
#
#  id                :integer         not null, primary key
#  plan_id           :integer
#  reading_date      :date
#  start_coordinates :string(255)
#  end_coordinates   :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#

class Reading < ActiveRecord::Base
  attr_accessible :plan_id, :reading_date, :start_coordinates, :end_coordinates

  has_one :plan

  def to_s
    "reading_date: #{self.reading_date} start: #{self.start_coordinates} end: #{self.end_coordinates}"
  end
end
