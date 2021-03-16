require_relative "piece"
require_relative "null_piece"

class Board

    attr_accessor :board

    def initialize
        @board = Array.new(8) { Array.new(8, nil) }
    end


    def place_pieces
        board.each_with_index do |row, row_idx|
            row.each_with_index do |spot, col_idx|
                if (0..1).include?(row_idx) || (6..7).include?(row_idx)
                    spot = Piece.new([row_idx, col_idx])
                else
                    spot = NullPiece.new
                end
            end
        end
    end

end


board = Board.new
board.place_pieces
p board
