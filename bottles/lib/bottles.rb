# frozen_string_literal: true

class Bottles
    def verse(number)
       
        lesser_number = number - 1
        "#{number} bottle#{change(number)} of beer on the wall, " +
        "#{number} bottle#{change(number)} of beer.\nTake " +
        "#{change_word(number)} down and pass it around, " +
        "#{zero(lesser_number)} bottle#{change(lesser_number)} of beer on the wall.\n"
    end
    def change(number)
        if number == 1
            ""
        else
            "s"
        end
    end
    def change_word(number)
        if number == 1
            "it"
        else
            "one"
        end 
    end
    def zero(lesser_number)
        if lesser_number == 0
            "no more"
        else
            lesser_number
        end
    end
end

