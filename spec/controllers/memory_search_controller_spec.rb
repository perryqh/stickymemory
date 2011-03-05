require File.dirname(__FILE__) + '/../spec_helper'

describe MemorySearchController do
	describe "GET new" do
    it "should render search results in a partial"
      get :new, :search => 'james'
      response.should render_template(:new)
    end
	end
end