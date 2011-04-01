class WestminsterStrategy
  def retrieve(query_string)
    fact = find_best_match(query_string)
    {:header => "#{fact.header}. #{fact.question}", :text => Fact.first.text}
  end

  private
  def find_best_match(query_string)
    by_header = Fact.where(:header => query_string)
    return by_header.first unless by_header.empty?
    #TODO: also filter by question and answer with LIKE
    
    Fact.first
  end
end
