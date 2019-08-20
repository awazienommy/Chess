require 'byebug'
require_relative "piece"
require_relative "null_piece"
require_relative "rook"
require_relative "bishop"
require_relative "knight"
require_relative "king"
require_relative "queen"
require_relative "pawn"



class Board
  attr_reader :rows
  def initialize
    nullp = NullPiece.instance
    
    @rows = Array.new(8){Array.new(8, nullp)}
    @rows[0..1].each_with_index do |row, idx_r| #Black
      row.each_with_index do |box, i|
        pawn_row = [[1, 0], [1, 1], [1, 2], [1, 3], [1, 4], [1, 5], [1, 6], [1, 7]]
        row[i] = Rook.new(:black, self, [idx_r, i])  if [idx_r, i] == [0, 0] || [idx_r, i] == [0, 7]
        row[i] = Bishop.new(:black, self)  if [idx_r, i] == [0, 2] || [idx_r, i] == [0, 5]
        row[i] = Knight.new(:black, self)  if [idx_r, i] == [0, 1] || [idx_r, i] == [0, 6]
        row[i] = King.new(:black, self)  if [idx_r, i] == [0, 4] 
        row[i] = Queen.new(:black, self)  if [idx_r, i] == [0, 3] 
        row[i] = Pawn.new(:black, self)  if  pawn_row.include?([idx_r, i])
        
      end
    end


    @rows[6..7].each_with_index do |row, idx_r| #white
      row.each_with_index do |box, i|
        pawn_row = [[0, 0], [0, 1], [0, 2], [0, 3], [0, 4], [0, 5], [0, 6], [0, 7]]
        row[i] = Rook.new(:white, self, [idx_r, i])  if [idx_r, i] == [1, 0] || [idx_r, i] == [1, 7]
        row[i] = Bishop.new(:white, self)  if [idx_r, i] == [1, 2] || [idx_r, i] == [1, 5]
        row[i] = Knight.new(:white, self)  if [idx_r, i] == [1, 1] || [idx_r, i] == [1, 6]
        row[i] = King.new(:white, self)  if [idx_r, i] == [1, 4] 
        row[i] = Queen.new(:white, self)  if [idx_r, i] == [1, 3]
        row[i] = Pawn.new(:white, self)  if  pawn_row.include?([idx_r, i]) 

      end      
    end
  end

  def render
    system "clear"
    board_arr = []
    (0...self.rows.length).each do |idx1|
      (0...self.rows.length).each do |idx2|
        pos = [idx1, idx2]
        print " " + self[pos].symbol.to_s + " "
      end
      puts
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
    all_positions = [end_pos[0], end_pos[1], start_pos[0], start_pos[1]]

    out_side_board = "Spot selected outside of board. Please choose a spot on the board"
    empty_spot_moved = "You cannot move an empty spot. Please choose a spot with a piece."
    raise out_side_board if all_positions.any? {|num| !(0..7).to_a.include?(num)} 
    raise empty_spot_moved if self[start_pos] == NullPiece.instance
 
    self[end_pos] = self[start_pos] 
    self[start_pos] = NullPiece.instance
  end
    
  def move_piece!(color, start_pos, end_pos)

  end

  def valid_pos?(pos)

  end

  def add_piece(piece, pos) #Queen inst... may be used to initialize board with pieces at correct locations
    #Q? Are we referring to a piece as a method or an instance
  end

  def checkmate?(color)

  end

  def in_check?(color)

  end

  def find_king(color)

  end

  def pieces #what is the intent of this method
    # @queen = queen instance with default pos and function variable 
    # @rook = rook
    # @knight = knight
    # @pawn = pawn
    # @bishop = bishop
    # @king = king
  end

  def dup

  end


end