# frozen_string_literal: true

class Greed
    def score(number = [])
      if number == []
      raise GreedError
      end
      number.uniq.each do |item|
        if item == 1
          return 100
        elsif item == 5
          return 50
        elsif item >=6 
          return 0
        elsif item == 4 || 3 || 2
          return 0
      
        end
    end
  end
end

class GreedError < StandardError
end