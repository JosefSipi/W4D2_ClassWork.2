class Piece

    attr_accessor :starting_pos

    def initialize  (starting_pos)
        @starting_pos = starting_pos
    end

    def inspect
        "Piece: #{starting_pos}"
    end



end