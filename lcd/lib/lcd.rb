# frozen_string_literal: true

class LCD
  def result(digit)
    if digit == 0
      upper_part_of_digit(digit) + middle_part_of_digit(digit) + lower_part_of_digit(digit)  
    else expected = <<~SQUIGGLY_HEREDOC
      _ 
     |_|
     |_|

   SQUIGGLY_HEREDOC
      
    end
  end

  def upper_part_of_digit(digit) 
        " _\n"
  end

  def middle_part_of_digit(digit)
    "|_|\n"
end

  def lower_part_of_digit(digit)
        "|_| "
  end

end
lcd = LCD.new
puts lcd.result(0)
