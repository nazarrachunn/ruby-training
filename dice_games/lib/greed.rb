# frozen_string_literal: true

class Greed
    def score(number = [])
      if number == []
      raise GreedError
      end
      total = 0
      number.uniq.each do |item|
        if item == 1
          return 100
        elsif item == 5
          return 50
        end
    end
  end
end

class GreedError < StandardError
end