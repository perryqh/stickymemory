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

class Readings < ActiveRecord::Base
  attr_accessible :plan_id, :reading_date, :start_coordinates, :end_coordinates
end
