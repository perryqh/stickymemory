require File.dirname(__FILE__) + '/../spec_helper'

describe EsvStrategy do
  describe "retrieve" do
    let(:esv_strategy) { EsvStrategy.new }

    it "should call esv_text with proper parameter" do
      ::URI.should_receive(:parse).with(/James/).and_return('my_uri')
      Net::HTTP.should_receive(:get).with('my_uri').and_return('<h2>test header</h2>test response')

      esv_strategy.retrieve('James 1').should eql({:header => 'test header', :text => 'test response'})
    end
  end

  describe "response" do
    let(:esv_strategy) { EsvStrategy.new }

    specify{ esv_strategy.send(:parse_ws_response, '<h2>Romans 12</h2>Let everyone').should eql({:header => 'Romans 12', :text => 'Let everyone'}) }
    specify{ esv_strategy.send(:parse_ws_response, 'ERROR:').should be_nil }
  end
end