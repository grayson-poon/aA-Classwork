require_relative 'piece'

class Pawn < Piece

  def symbol
    @symbol = :P
  end

  def moves
    
  end

  def forward_direction
    if self.color == :B
      return 1 
    else
      return -1
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

  def forward_steps # returns a 2D array
    steps = [[0, self.forward_direction]]
    if self.at_start_row?
      steps << [0, 2 * self.forward_direction]
    end

    return steps

  end

  def side_attacks
    
    
    
    
    # if 1,1 == pice not my color
    #   then set my move == [above x.coord, self.forward_direction]
    # end
  end

end