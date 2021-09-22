require_relative "null_piece"

class Piece
  attr_reader :board, :color, :position

  def initialize(color, position) # pass in self when initializing a piece with a board instance
    @color = color
    # @board = Board.new
    @position = position # [0, 0]
  end

  def inspect
    "<RegularPiece> #{color}"
  end

  # def []=(pos, self)
  #   row, col = pos
  #   @board[pos] = self
  # end

  def moves
    
  end


end