module Slideable

  def horizontal_dirs
    grow_unblocked_moves(HORIZONTAL_DIRS)
  end

  def diagnonal_dirs
    DIAGONAL_DIRS
  end

  def moves
   
  end

  private

  HORIZONTAL_DIRS = [[0, 1], [1, 0], [-1, 0], [0, -1]]
  DIAGONAL_DIRS = [[1, 1], [1,-1], [-1, -1], [-1, 1]]

  def grow_unblocked_moves(move_dirs_arr)

    possible_positions = []

    move_dirs_arr.each do |unit_dir|
      i = 1
      extended_pos = unit_dir.map(&:*i)

      while @board_instance[extended_pos] == NullPiece.instance
        possible_positions << extended_pos
        i += 1
        extended_pos.map!(&:*i)
      end

      if @board_instance[extended_pos].color != self.color
        possible_positions << extended_pos
      end

    end

    return possible_positions
  end

end