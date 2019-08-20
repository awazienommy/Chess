require_relative "piece"
require_relative "slidable"

class Rook < Piece
  include Slidable

  # Remove to rely on parent class's initialize method
  # def initialize(color, board)
  #   super(color, board)
  # end



  def symbol
    if @color == :white
      sym = "\u2656"
      sym.encode('UTF-8')
    elsif @color == :black
      sym = "\u265C"
      sym.encode('UTF-8')
    end

  end

  
  def move_dirs
    #move_dirs
  end

end