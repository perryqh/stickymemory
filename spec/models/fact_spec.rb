require File.dirname(__FILE__) + '/../spec_helper'

describe Fact do
  describe 'validations' do 
    should_validate_presence_of :type, :question, :header, :text 
  end 
end
