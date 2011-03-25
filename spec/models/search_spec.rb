require File.dirname(__FILE__) + '/../spec_helper'

describe Search do
  describe "perform" do
    before(:each) do
      @esv_strategy = EsvStrategy.new
      @westminster_strategy = WestminsterStrategy.new
    end

    it "should delegate to EsvStrategy to perform search" do
      EsvStrategy.should_receive(:new).and_return(@esv_strategy)
      @esv_strategy.should_receive(:retrieve).with("Romans 1").and_return("stubbed response")
      Search.perform("Romans 1", "esv").should eql "stubbed response"
    end

    it "should delegate to WestminsterStrategy to perform search" do
      WestminsterStrategy.should_receive(:new).and_return(@westminster_strategy)
      @westminster_strategy.should_receive(:retrieve).with("1").and_return("stubbed response")
      Search.perform("1", "shorter").should eql "stubbed response"
    end
  end
end