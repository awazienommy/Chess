require_relative "piece"

class King < Piece

  # Remove to rely on parent class's initialize method
  # def initialize(color, board)
  #   super(color, board)
  # end

  def moves
    
  end

  def symbol
    if @color == :white
      sym = "\u2654"
      sym.encode('UTF-8')
    elsif @color == :black
      sym = "\u265A"
      sym.encode('UTF-8')
    end

  end

end