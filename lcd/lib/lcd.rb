# frozen_string_literal: true

class LCD
  def result(digit)
    case digit
    when 8
      eight.values.join
    when 0
      zero.values.join
    else 6
      six.values.join

    end
  end

  def zero
    {
      upper_part_of_digit: " _\n",
      middle_part_of_digit: "| |\n",
      lower_part_of_digit: "|_| "
    }
  end

  def six
    {
      upper_part_of_digit: " _\n",
      middle_part_of_digit: "|_\n",
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
  
  def eight
    {
      upper_part_of_digit: " _\n",
      middle_part_of_digit: "|_|\n",
      lower_part_of_digit: "|_| "
    }
  end
end

lcd = LCD.new
puts lcd.result(4)
