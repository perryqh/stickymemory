require File.dirname(__FILE__) + '/../spec_helper'

describe HomeController do
  describe "GET index" do
    it "should render index page" do
      get :index
      response.should be_success
    end
  end
end
