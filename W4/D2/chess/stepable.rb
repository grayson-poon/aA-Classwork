module Stepable

  def moves
    unchecked_moves = []
    self.move_diffs.each do |move|
      pos = [(self.position.first + move.first), (self.position.last + move.last)]
      if pos.all? { |x| x >= 0 && x <= 7 } # all possible positions on board
        if @board_instance[pos].color != self.color # should include color nil
          unchecked_moves << pos
        end
      end
    end

    return unchecked_moves

  end

  private

  def move_diffs
    raise "Logic missing"
  end

end