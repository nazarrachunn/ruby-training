# frozen_string_literal: true

class Greed
    def score(number = nil)
      if number == nil
      raise GreedError
      end
      total_score = 0
    end
end
class GreedError < StandardError
end