# frozen_string_literal: true

class LCD
  def result(digit)
    if digit == 8
      eight.values.join
    else
      zero.values.join
    end
  end

  def zero
    {
      upper_part_of_digit: " _\n",
      middle_part_of_digit: "| |\n",
      lower_part_of_digit: "|_| "
    }
  end

  def eight
    {
      upper_part_of_digit: " _\n",
      middle_part_of_digit: "|_|\n",
      lower_part_of_digit: "|_| "
    }
  end
end

lcd = LCD.new
puts lcd.result(0)
