require File.dirname(__FILE__) + '/../spec_helper'

describe Plan do
  describe "validations" do
    should_belong_to :start_bible_book
    should_belong_to :end_bible_book
    should_have_many :readings
  end

  describe "develop plan" do
    it "should create correct plan" do
      plan = Factory.create(:plan, :start_bible_book => book_by_num(1), :end_bible_book => book_by_num(2), :days_duration => 30)
      plan.reload
      plan.readings.length.should eql 30
      plan.readings.first.reading_date.should eql plan.start_date
      plan.readings.last.reading_date.should eql plan.end_date 
    end
    it "should create plan from params" do
      plan = Plan.new({"end_bible_book_id"=>"10", "start_bible_book_id"=>"2", "days_duration"=> 7})
      plan.save! 
    end
  end
  describe "plan validations" do
    before(:each) do
      @plan = Factory(:plan)
      @plan.should be_valid
    end
    [:start_bible_book, :end_bible_book, :days_duration].each do |field|
      it "should validate presence of #{field}" do
        @plan.send("#{field}=", nil)

        @plan.should_not be_valid
        @plan.should have(1).error_on(field)
      end
    end
  end
end
