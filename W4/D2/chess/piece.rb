require_relative "null_piece"

class Piece
  attr_reader :board, :color, :position

  def initialize(color, board, position)
    @color = color
    @board = Board.new
    @position = position # [0, 0]
  end

  def []=(pos, self)
    row, col = pos
    @board[pos] = self
  end

end