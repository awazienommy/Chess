

class Piece
  # Figure out which form of color symbol to use
  # :color
  # @@color 
  # COLOR
  def initialize (color, board, pos)
    @color = color #:black, :white
    @board = board #Board.new #?
    @pos = pos
  end

  def to_s
    self.symbol.to_s
  end

  def empty?

  end

  def valid_moves
    possible_moves = [] #an array of positions == NullPiece.instance

    #some logic ?

    possible_moves
  end

  def pos=(val)
    
  end

  def symbol
    :P
  end

  private
  def move_into_check?(end_pos)

  end



end

