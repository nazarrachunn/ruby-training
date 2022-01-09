# frozen_string_literal: true

class LCD
  attr_reader :digit, :lcd_states, :lcd_display_data

  def initialize
    @digit = digit
    @lcd_states = %w[HORIZONTAL VERTICAL HORIZONTAL VERTICAL HORIZONTAL]
    @lcd_display_data = {
      0 => [1, 3, 2, 3, 1],
      1 => [2, 5, 2, 5, 2],
      2 => [1, 5, 1, 4, 1],
      3 => [1, 5, 1, 5, 1],
      4 => [2, 3, 1, 5, 2],
      5 => [1, 4, 1, 5, 1],
      6 => [1, 4, 1, 4, 1],
      7 => [1, 5, 2, 5, 2],
      8 => [1, 3, 1, 3, 1],
      9 => [1, 3, 1, 5, 1]
    }
  end
    def render(digit)
      if digit == 1
      lcd_display_data.values.join
      else
      lcd_display_data.keys.join
      end
    end

    def horizontal_segment(position)
      case position
      when 1
        " " + "_"
      when 2
        " " + " "
      end
    end

    def vertical_element(position)
      case position
      when 3
        " " + "| |"
      when 4
        " " + " |"
      when 5
        " " + "| "
      end
    end
end

lcd = LCD.new
puts lcd.render(1)
