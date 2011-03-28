require File.dirname(__FILE__) + '/../spec_helper'

describe Readings do
  it "should be valid" do
    Readings.new.should be_valid
  end
end
