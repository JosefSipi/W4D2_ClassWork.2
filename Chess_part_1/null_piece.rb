class NullPiece < Piece

    attr_accessor :value

    def initialize
        @value = "null_piece"
    end

    def inspect
        @value
    end 

end