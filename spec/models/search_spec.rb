require File.dirname(__FILE__) + '/../spec_helper'

describe Search do
  describe "perform" do
    before(:each) do
      @esv_strategy = EsvStrategy.new
    end

    it "should delegate to EsvStrategy to perform search" do
      EsvStrategy.should_receive(:new).and_return(@esv_strategy)
      @esv_strategy.should_receive(:retrieve).with("Romans 1").and_return("stubbed response")
      Search.perform("Romans 1", "esv").should eql "stubbed response"
    end
  end
end