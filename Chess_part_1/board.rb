
require_relative "piece"
require_relative "null_piece"

class Board

    attr_accessor :board

    def initialize
        @board = Array.new(8) { Array.new(8) }
        .place_pieces
    end

    def place_pieces
        board.each_with_index do |row, row_idx|
            row.each_with_index do |spot, col_idx|
                if (0..1).include?(row_idx) || (6..7).include?(row_idx)
                    pos = [row_idx, col_idx]
                    self[pos] = Piece.new #(pos)
                end
            end
        end
    end

    def [](pos_arr)  # [0,5]
        row = pos_arr[0].to_i
        column = pos_arr[1].to_i
        board[row][column]
    end

    def []=(pos_arr, piece)
        row = pos_arr[0].to_i
        column = pos_arr[1].to_i
        board[row][column] = piece
    end

    def move_piece(start_pos, end_pos)

        play_piece = board[start_pos]

        raise "No piece at this location" if empty?(start_pos) 
        
        board[start_pos] = nil   # NullPiece.new
        board[end_piece] = play_piece

    end

    def empty?(position)
        board[position].nil?    # is_a?(NullPiece)
    end





end


board = Board.new
p board





        # FIRST ATTEMPT: OVER COMPLICATED
        # begin
        #     board[start_pos] = NullPiece.new
        #     board[end_piece] = play_piece
        # rescue                           #Potential errors: not_on_board, no_posistion, no_piece_to_move 
        #     raise "Not a valid move"
        # end


        # begin
        #    raise "No piece at this location" if empty?(start_pos)   
        # rescue 
        #     puts "Please choose a valid piece"
        #     retry
        # end


        # begin
        #     #
        #     #rescue for no piece @ start and cant move end??
        # rescue 
        #     raise "can't move to this position"
        # end

        # if  empty?(end_pos)
        #     board[end_pos] = play_piece
        #     board[start_pos] = NullPiece.new
        # end
