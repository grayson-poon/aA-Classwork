require_relative "null_piece"

class Piece
  attr_reader :board, :color, :position

  def initialize(color, position)
    @color = color
    # @board = Board.new
    @position = position # [0, 0]
  end

  def inspect
    "<RegularPiece>"
  end

  # def []=(pos, self)
  #   row, col = pos
  #   @board[pos] = self
  # end

end