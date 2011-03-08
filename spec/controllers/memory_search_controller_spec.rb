require File.dirname(__FILE__) + '/../spec_helper'

describe MemorySearchController do
	describe "GET new" do
    it "should render search results in a partial" do
      get :new, :search => 'james' 
      response.should be_success
    end
	end
end