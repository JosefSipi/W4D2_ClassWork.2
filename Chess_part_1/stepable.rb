module Stepable

    def moves(position)
        moves = [ ]  
        moves = move_diff #call the method from piece classes

        row = position[0]
        column = position[1]

        
        moves_diff.each do |p_pos| #potential position 
            new_row = p_pos[0]
            new_column = p_pos[1]

            new_pos = [ (row + new_row), (column + new_column) ]
  






    # current => while move diff > count
    # 1 loop => [1,0] , -1
    # i= 2

        # posistion start => make one step =>
        # board(add getter)
        #4 place in 
            # iterate through moves
        
    end

    def move_diff  # assume this
        raise "move_diff not implemented"
    end

end