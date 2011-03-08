class Search
  class << self
    def perform(query_string)
      strategy.retrieve query_string
    end

    private
    def strategy
      @esv_strategy ||= EsvStrategy.new
    end
  end
end