module Slideable

  def horizontal_dirs
    HORIZONTAL_DIRS
  end

  def diagnonal_dirs
    DIAGONAL_DIRS
  end

  def moves

  end

  private

  HORIZONTAL_DIRS = [[0, 1], [1, 0], [-1, 0], [0, -1]]
  DIAGONAL_DIRS = [[1, 1], [1,-1], [-1, -1], [-1, 1]]

  def grow_unblocked_moves
    i = 1
    possible_positions = []
    HORIZONTAL_DIRS.each do |unit_dir|
      extended_pos = unit_dir.map(&:*i)
      if @board_instance[extended_pos] != NullPiece.instance
        if @board_instance[extended_pos].color != self.color
          possible_positions << extended_pos
        end
      else
        possible_positions << extended_pos
      end
    end
  end

end