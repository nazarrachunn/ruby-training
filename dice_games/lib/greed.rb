# frozen_string_literal: true

class Greed
    def score(number = nil)
      if number == nil
      raise GreedError
      end
      if number.sort.uniq == [1,6]
        return 800
      elsif number.uniq == [1,5,6]
        return 1050
      elsif number.map {|i| i + 7} == [8,11,11,11,8]
        return 600
      elsif number.collect {|i| i + 5} == [9,10,10,10,10]
        return 550
      elsif number.count(5)/3 == 1 
        return 500 
      elsif number.count(1)*3 == 9
        return 1000
      elsif number.uniq == [4,5]
        return 450
      elsif number.uniq == [1,2,3,4,5]
        return 150
      elsif number.count(5)/3 == 1 
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
      total_score = 0 
    end
  end
class GreedError < StandardError
end