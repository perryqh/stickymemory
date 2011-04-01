require File.dirname(__FILE__) + '/../spec_helper'

describe WestminsterStrategy do
  describe "retrieve" do
    before(:each) do
      load_seeds
    end

    let(:west){ WestminsterStrategy.new }

    it "should return proper matched fact hash" do
      west.retrieve('1').should eql({:header => "1. What is the chief end of man?", :text => "Man's chief end is to glorify God, and to enjoy him forever."})
    end

    it "should find fact by number" do
      west.send(:find_best_match, '2').header.should eql '2'
    end

    it "should return question 1 if no match" do
      west.send(:find_best_match, 'nonsense').header.should eql '1'
    end
  end
end
