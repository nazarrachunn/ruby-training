# frozen_string_literal: true

class LCD
  def result(digit)
    case digit
    when 8
      eight.values.join
    when 0
      zero.values.join
    when 6
      six.values.join
    when 1
      one.values.join
    when 2
      two.values.join
    when 3
      three.values.join
    when 4
      four.values.join
    when 5
      five.values.join
    when 7
      seven.values.join
    else 9
      nine.values.join
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

  def one
    {
      upper_part_of_digit: "  \n",
      middle_part_of_digit: "  |\n",
      lower_part_of_digit: "  |"
    }
  end

  def two
    {
      upper_part_of_digit: " _\n",
      middle_part_of_digit: " _|\n",
      lower_part_of_digit: "|_"
    }
  end

  def three
    {
      upper_part_of_digit: " _\n",
      middle_part_of_digit: " _|\n",
      lower_part_of_digit: " _| "
    }
  end

  def four
    {
      upper_part_of_digit: " \n",
      middle_part_of_digit: "|_|\n",
      lower_part_of_digit: "  |"
    }
  end

  def five
    {
      upper_part_of_digit: " _\n",
      middle_part_of_digit: "|_\n",
      lower_part_of_digit: " _|"
    }
  end

  def seven
    {
      upper_part_of_digit: " _\n",
      middle_part_of_digit: "  |\n",
      lower_part_of_digit: "  |"
    }
  end

  def nine
    {
      upper_part_of_digit: " _\n",
      middle_part_of_digit: "|_|\n",
      lower_part_of_digit: " _| "
    }
  end
end

lcd = LCD.new
puts lcd.result(1)
