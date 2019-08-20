require_relative "piece"

class Board

  def initialize#(queen, rook, knight, pawn, bishop, king)
    # @queen = queen
    # @rook = rook
    # @knight = knight
    # @pawn = pawn
    # @bishop = bishop
    # @king = king
    @rows = Array.new(8){Array.new(8)}
    @rows[0..1].each do |row|
      row.each_with_index do |box, i|
        row[i] = "p"
      end
    end
    @rows[6..7].each do |row|
      row.each_with_index do |box, i|
        row[i] = "v"
      end
    end
  end

  

  def [](pos)
    row, col = pos
    @rows[row][col]
  end

  def []=(pos, val)
    row, col = pos
    @rows[row][col] = val
  end
  
  def move_piece(start_pos, end_pos)
    #update rows array
    #raise exception if no piece at start_pos or piece can't move to end_pos
    self[end_pos] = self[start_pos] 
    self[start_pos] = nil
    

  end
    
  def move_piece!(color, start_pos, end_pos)

  end

  def valid_pos?(pos)

  end

  def add_piece(piece, pos) #Queen inst
    #Q? Are we referring to a piece as a method or an instance
  end

  def checkmate?(color)

  end

  def in_check?(color)

  end

  def find_king(color)

  end

  def pieces #what is the intent of this method
    # @queen = queen
    # @rook = rook
    # @knight = knight
    # @pawn = pawn
    # @bishop = bishop
    # @king = king
  end

  def dup

  end








end