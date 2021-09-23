require_relative 'piece'

class Pawn < Piece

  def symbol
    @symbol = :P
  end

  def moves
    
  end

  def forward_direction
    if self.color == :B
      return [0, 1]
    else
      return [0, -1]
    end
  end

  def at_start_row?
    if self.color == :B && self.position.first == 1
      return true
    elsif self.color == :W && self.position.first == 6
      return true
    else
      return false
    end
  end

end