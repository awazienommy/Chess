require_relative "piece"
require 'singleton'

class NullPiece < Piece

  include Singleton
  def initialize#(pos)
    #@pos = pos
  end

  def moves
    
  end

  def symbol
    sym = "\u26FF"
    sym.encode('UTF-8')
  end

end