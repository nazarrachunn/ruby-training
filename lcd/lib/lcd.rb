# frozen_string_literal: true

class LCD
  def render(string)
    config = {
      "0" => [' _', '| |', '|_|'],
      "1" => ['', '  |', '  |'],
      "2" => [' _', ' _|', '|_'],
      "3" => [' _', ' _|', ' _|'],
      "4" => ['  ', '|_|', '  |'],
      "5" => [' _', '|_', ' _|'],
      "6" => [' _', '|_ ', '|_|',],
      "7" => [' _', '  |', '  |'],
      "8" => [' _', '|_|', '|_|'],
      "9" => [' _', '|_|', ' _|']
    }
    array = string.split('')
    number_of_lines = 5

    result = (0..number_of_lines - 1).inject("") { |final, num| final + "#{array.inject("") { |line, char| line + "#{config[char][num]}\t" }}\n" }
  end
  lcd = LCD.new
  puts lcd.render('1273')
  
end
  
  