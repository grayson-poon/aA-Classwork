module Stepable

  def moves
    unchecked_moves = []
    self.move_diffs.each do |move|
      pos = [(self.position.first + move.first), (self.position.last + move.last)]
      unchecked_moves << pos if pos.all? { |x| x >= 0 && x <= 7 }
    end

    

  end

  private

  def move_diffs
    raise "Logic missing"
  end

end