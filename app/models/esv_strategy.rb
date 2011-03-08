class EsvStrategy
  def initialize(key="4378c937e4dd1c29")
    @options = ["include-passage-references=true",
      "include-footnotes=false",
      "include-headings=false",
      "include-subheadings=false",
      "include-audio-link=false",
      "include-short-copyright=0",
      "include-passage-horizontal-lines=1",
    "include-heading-horizontal-lines=1"].join("&")

    @base_url = "http://www.esvapi.org/v2/rest/passageQuery?key=#{key}"
  end

  def retrieve(passage)
    passage = passage.gsub(/\s/, "+")
    passage = passage.gsub(/\:/, "%3A")
    passage = passage.gsub(/\,/, "%2C")
    esv_text(@base_url + "&passage=#{passage}&#{@options}")
  end

  private

  def parse_ws_response(raw)
    return nil if raw.nil? || raw.index(/ERROR/) == 0
    
    header = raw.match(/\<h2\>(.*)\<\/h2\>/)[1] if raw.try(:match, /\<h2\>(.*)\<\/h2\>/)
    {:header => header, :text => raw.gsub(/\<h2\>.*\<\/h2\>/, '')}
  end

  def esv_text(url)
    parse_ws_response Net::HTTP.get(::URI.parse(url))
  end
end