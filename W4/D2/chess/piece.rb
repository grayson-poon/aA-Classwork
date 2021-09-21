

class Piece

  def initialize(color, board, position)
    @color = color
    @board = Board.new
    @position = position # [0, 0]
  end

end