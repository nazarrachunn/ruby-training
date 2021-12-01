# frozen_string_literal: true

class Greed
    def score(number = nil)
      if number == nil
      raise GreedError
      end
      total_score = 0
      if (number.count(1)/3) == 1 
        point_scored += 1000
        3.times { number.shift }
      end
      number.each do |item|
        if item == 1
          return 100
        elsif item == 5
          return 50
        elsif item == 4 || 3 || 2 || 6
          return 0
        end
    end
    total_score
  end
end

class GreedError < StandardError
end