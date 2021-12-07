# frozen_string_literal: true

class Bottles
    def verse (song)
        bottles_before = 8
        bottles_after = (bottles_before - 1)
        song_pieces = ["#{bottles_before} bottles of beer on the wall, ", "#{bottles_before} bottles of beer.", "\nTake one down and pass it around, ","#{bottles_after} bottles of beer on the wall.\n"]
        x = "/n"
        song_pieces.join
    end

    def verses

    end
    
    def sing

    end
end
    