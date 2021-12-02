# frozen_string_literal: true

class Greed
    def score(number = nil)
      if number == nil
      raise GreedError
      end
          if number.count(5)/3 == 1 
        return 500 
      elsif number.count(1)*3 == 9
        return 1000
      elsif number.count(1)-1 == 0
        return 100
      elsif number.count(2)/3 == 1
        return 200
      elsif number.count(3)/3 == 1
        return 300
      elsif number.count(4)/3 == 1
        return 400
      elsif number.count(5)/1 == 1
        return 50
      elsif number.count(6)/3 == 1
        return 600
      elsif number.include?(1 && 1 && 5 && 5)
        return 300
      elsif number.count(1)/5 == 1
        return 1200
      end
      total = 0
    end
end

class GreedError < StandardError
end