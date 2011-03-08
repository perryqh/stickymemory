require File.dirname(__FILE__) + '/../spec_helper'

describe MemorySearchController do
	describe "GET new" do
    it "should render search results in a partial" do
      Search.should_receive(:perform).with('james').and_return('perfect!')
      get :new, :search_text => 'james' 
      response.should be_success
    end
	end
end