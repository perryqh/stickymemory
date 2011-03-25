require 'spec_helper'

describe 'Searching' do
  describe "GET /index" do
    it "should render home page" do
      get home_index_path
      response.status.should be(200) 
    end

    it "should display search fields" do
      get root_url
      response.body.should include("Search for Text to Memorize")
      response.body.should include("ESV Bible")
      response.body.should include("Go") 
    end

    it "should have proper default values" do
      visit root_url
      has_checked_field?("esv").should be_true
      has_checked_field?("shorter").should be_false
    end
  end
end