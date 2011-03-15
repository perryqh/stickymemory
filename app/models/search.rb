class Search
  class << self
    def perform(query_string, category)
      strategy.retrieve query_string
    end

    private
    def strategy
      @esv_strategy ||= EsvStrategy.new
    end
  end
end