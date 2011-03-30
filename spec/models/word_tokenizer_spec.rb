require File.dirname(__FILE__) + '/../spec_helper'

describe WordTokenizer do
  describe 'parsing' do
    before(:each) do
      @raw_text = "<p>This is a <span id='2'>great thing</span> to memorize. <p>Second sentence.</p>With a comma, is a test. Jimmy's job!&nbsp;With spaces?"
      @word_tokenizer = WordTokenizer.new(@raw_text)
    end

    it "should return proper reveal for last word" do
      @word_tokenizer.words.last[:reveal].should eql 'spaces?'
    end
  end

  describe 'simple full text' do
    before(:each) do
      @raw_text = "<p>This is.</p>"
      @word_tokenizer = WordTokenizer.new(@raw_text)
    end

    it "should return proper reveal for last word" do
      @word_tokenizer.decorated_full_text.should eql "<p><span class='first' data-word-num='0'>T</span><span class='rest-of-word' data-word-num='0'>his</span> <span class='first' data-word-num='1'>i</span><span class='rest-of-word' data-word-num='1'>s</span>.</p>"
    end
  end

  describe 'esv text parsing' do
    before(:each) do
      @raw_text = <<-eos
      <div class="esv">
      <div class="esv-text">
      <p id="p40005001.06-1"><span class="chapter-num" id="v40005001-1">5:1&nbsp;</span>Seeing the crowds, he went up on the mountain, and when he sat down, his disciples came to him.</p>
      </div>
      </div>
      eos
      @word_tokenizer = WordTokenizer.new(@raw_text)
    end
    it "should return proper words" do
      @word_tokenizer.words.should eql [{:start=>141, :first_letter=>"S", :end=>147, :reveal=>"      <div class=\"esv\">\n      <div class=\"esv-text\">\n      <p id=\"p40005001.06-1\"><span class=\"chapter-num\" id=\"v40005001-1\">5:1&nbsp;</span>Seeing "}, {:start=>148, :first_letter=>"t", :end=>151, :reveal=>"the "}, {:start=>152, :first_letter=>"c", :end=>158, :reveal=>"crowds,"}, {:start=>160, :first_letter=>"h", :end=>162, :reveal=>" he "}, {:start=>163, :first_letter=>"w", :end=>167, :reveal=>"went "}, {:start=>168, :first_letter=>"u", :end=>170, :reveal=>"up "}, {:start=>171, :first_letter=>"o", :end=>173, :reveal=>"on "}, {:start=>174, :first_letter=>"t", :end=>177, :reveal=>"the "}, {:start=>178, :first_letter=>"m", :end=>186, :reveal=>"mountain,"}, {:start=>188, :first_letter=>"a", :end=>191, :reveal=>" and "}, {:start=>192, :first_letter=>"w", :end=>196, :reveal=>"when "}, {:start=>197, :first_letter=>"h", :end=>199, :reveal=>"he "}, {:start=>200, :first_letter=>"s", :end=>203, :reveal=>"sat "}, {:start=>204, :first_letter=>"d", :end=>208, :reveal=>"down,"}, {:start=>210, :first_letter=>"h", :end=>213, :reveal=>" his "}, {:start=>214, :first_letter=>"d", :end=>223, :reveal=>"disciples "}, {:start=>224, :first_letter=>"c", :end=>228, :reveal=>"came "}, {:start=>229, :first_letter=>"t", :end=>231, :reveal=>"to "}, {:start=>232, :first_letter=>"h", :end=>235, :reveal=>"him.</p>\n      </div>\n      </div>\n"}]
    end
  end

  describe 'parse special characters' do
    before(:each) do
      @word_tokenizer = WordTokenizer.new("&nbsp;With spaces?")
    end
    it "should ignore &nbsp; when finding first letters" do
      @word_tokenizer.first_letter_indexes.should eql [6, 11]
    end
  end
end
