# frozen_string_literal: true

class Bottles
    def verse(number)
        lesser_number = number - 1
        "#{number} bottle#{change} of beer on the wall, 
        #{number} bottle#{change} of beer.\nTake #{change_word} down and pass it around, 
        #{lesser_number} bottles of beer on the wall.\n"
    end
    def change(number)
        if number == 1
            ""
        else
            "s"
        end
    def change_word(number)
        if number == 1
            "it"
        else
            "one"


    end
    end 
end

