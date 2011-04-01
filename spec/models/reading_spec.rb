require File.dirname(__FILE__) + '/../spec_helper'

describe Reading do
  describe 'to_s' do
    it "should build proper to_s" do
      Reading.new(:reading_date => '10/01/2012', :start_coordinates => '1', :end_coordinates => '2').to_s.should eql "reading_date: 2012-01-10 start: 1 end: 2"
    end
  end
end
