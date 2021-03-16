
require_relative "piece"
require_relative "null_piece"

class Board

    attr_accessor :board

    def initialize
        @board = Array.new(8) { Array.new(8) { NullPiece.new } }
    end

    def [](pos_arr)  # [0,5]
        row = pos_arr[0]
        column = pos_arr[1]
        board[row][column]
    end

    def []=(pos_arr, piece)
        row = pos_arr[0]
        column = pos_arr[1]
        board[row][column] = piece
    end

    def move_piece(start_pos, end_pos)
        

    end


    def place_pieces
        board.each_with_index do |row, row_idx|
            row.each_with_index do |spot, col_idx|
                if (0..1).include?(row_idx) || (6..7).include?(row_idx)
                    pos = [row_idx, col_idx]
                    self[pos] = Piece.new(pos)
                end
            end
        end
    end



end


board = Board.new
board.place_pieces
p board
