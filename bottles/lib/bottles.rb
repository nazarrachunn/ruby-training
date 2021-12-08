# frozen_string_literal: true

class Bottles
    def verse(number)
        "#{quantity(number)} #{check_multiple(number)} of beer on the wall, " +
        "#{quantity(number)} #{check_multiple(number)} of beer.\n" +
        "#{store(number)}, " +
        "#{quantity(min_or_max(number))} #{check_multiple(min_or_max(number))} of beer on the wall.\n"
    end
    def check_multiple(number)
        if number == 1
            "bottle"
        else
            "bottles"
        end
    end
    def change_word(number)
        if number == 1
            "it"
        else
            "one"
        end 
    end

    def quantity(number)
        if number == 0
            "no more"
        else
            number.to_s
        end
    end

    def store(number)
        if number == 0
            "Go to the store and buy some more"
        else
            "Take #{change_word(number)} down and pass it around"
        end
    end
    def min_or_max(number)
        if number == 0
            99
        else
            number - 1
        end
    end
end