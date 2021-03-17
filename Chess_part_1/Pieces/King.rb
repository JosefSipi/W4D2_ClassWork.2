require_relative "../Modules/stepable"
class King < Piece
include "Stepable"

    moves_diff = [
        [1,0],
        [1,1],
        [-1,1],
        [-1,-1],
        [0,-1],
        [0,1],
        [-1,0],
        [1,-1]
    ]

end