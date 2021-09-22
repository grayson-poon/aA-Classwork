require_relative "null_piece"

class Piece
  attr_reader :board, :color, :position

  def initialize(color, board_instance, position) # pass in self when initializing a piece with a board instance
    @color = color
    @board = board_instance
    @position = position # [0, 0]
  end

  def inspect
    "<RegularPiece> #{color}"
  end

  def position=(value)
    self.position = value
  end

  def empty?
    if self.position == NullPiece.instance
      true
    else
      false
    end
  end

  # def []=(pos, self)
  #   row, col = pos
  #   @board[pos] = self
  # end

  def moves
    
  end


end