# require_relative "null_piece"

class Piece
  attr_reader :board_instance, :color, :position

  def initialize(color, board_instance, position) # pass in self when initializing a piece with a board instance
    @color = color
    @board_instance = board_instance
    @position = position # [0, 0]
  end

  def inspect
    "<RegularPiece> #{color}"
  end

  def position=(new_position)
    @position = new_position
  end

  def empty?
    if @board_instance[position] == NullPiece.instance
      true
    else
      false
    end
  end

  def symbol
    piece_symbols = [:K, :KN, :R, :BP, :Q, :P]
  end



  def moves

  end


end