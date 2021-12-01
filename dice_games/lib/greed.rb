# frozen_string_literal: true

class Greed
    def score(number = nil)
      if number == nil
      raise GreedError
      end
      if number.include?(5)
        return 50
      elsif number.count(1)/3 == 1
        return 1000
      elsif number.include?(1)
        return 100
      elsif number.count(2)/3 == 1
        return 200
      elsif number.count(3)/3 == 1
        return 300
      end
      total = 0
    end
end

class GreedError < StandardError
end