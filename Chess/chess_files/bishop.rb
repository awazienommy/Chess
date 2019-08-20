require_relative "piece"

class Bishop < Piece

  # Remove to rely on parent class's initialize method
  # def initialize(color, board)
  #   super(color, board)
  # end

  def moves
    
  end

  def symbol
    if @color == :white
      sym = "\u2657"
      sym.encode('UTF-8')
    elsif @color == :black
      sym = "\u265D"
      sym.encode('UTF-8')
    end

  end

end