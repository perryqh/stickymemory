class Search
  class << self
    def perform(query_string, category)
      strategy(category).retrieve query_string
    end

    private
    def strategy(category)
      if 'shorter' == category
        @westminster_strategy ||= WestminsterStrategy.new
      else
        @esv_strategy ||= EsvStrategy.new
      end
    end
  end
end
