require File.dirname(__FILE__) + '/../spec_helper'

describe Fact do
  describe 'validations' do 
    should_validate_presence_of :ftype, :question, :header, :text 
  end 
end
