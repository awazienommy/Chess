module Slideable
  
  #we have access to the ROOK position, board, and color
  def horizontal_dirs
    HORIZONTAL_DIRS
  end

  def diagonal_dirs
    DIAGONAL_DIRS
  end

  def moves #accepts selector switch and feeds "grow" with each ele of moves
    #use move_dirs array as deltas depending on piece subclass
    #return all possible moves from origin position
    #enumerate through class constance, adding values to rows and shovel into new arr
    #by using grow as a step
  end

  private

  HORIZONTAL_DIRS = [[1, 0], [0, 1], [-1, 0], [0, -1]] #deltas
  DIAGONAL_DIRS = [[1, 1], [-1, -1], [-1, 1], [1, -1]]

  def moves_dirs #selector switch
    #just reminds user to create in class
    #horizontal_dirs for rook
  end

  def grow_unblocked_moves_in_dir(dx, dy) #logic to stop in specific direction
    #until case of hitting piece or capturing or end of board, keep using 
    #returns either array or empty array if stopped by condition
    ini_pos = @pos.dup
    end_pos = 

    #shovel in row position if row position is NullPiece.instance
    HORIZONTAL_DIRS << pos if @board[pos] == NullPiece.instance
  end




end