require File.dirname(__FILE__) + '/../spec_helper'

describe "all routes" do
  it "routes '/' to home#index" do
    { :get => '/'}.should route_to(:controller => 'home', :action => 'index') 
  end
end