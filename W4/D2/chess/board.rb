require_relative "null_piece"
require_relative "piece"


class Board

  attr_reader :rows

  def initialize
    @rows = Array.new(8) { Array.new(8, nil) }
    @b_captured = []
    @w_captured = []

    @rows.each.with_index do |row, row_i|
      if [0, 1].include?(row_i)
        row.each.with_index do |slot, col_i|
          @rows[row_i][col_i] = Piece.new(:B, self, [row_i, col_i])
        end
      elsif [6, 7].include?(row_i)
        row.each.with_index do |slot, col_i|
          @rows[row_i][col_i] = Piece.new(:W, self, [row_i, col_i])
        end
      end
    end

    @rows.each.with_index do |row, row_i|
      row.each.with_index do |slot, col_i|
        if slot == nil
          @rows[row_i][col_i] = NullPiece.instance
        end
      end
    end
  end

  def [](pos)
    row, col = pos
    @rows[row][col]
  end

  def []=(pos, val)
    row, col = pos
    @rows[row][col] = val
  end

  def move_piece(color, start_pos, ending_pos)
    if self[start_pos].is_a?(NullPiece)
      raise "No starting piece here"
    end

    if !(0..7).to_a.include?(ending_pos.first) || !(0..7).to_a.include?(ending_pos.last)
      raise "Illegal move"
    end

    self[start_pos], self[ending_pos] = self[ending_pos], self[start_pos]
    self[ending_pos].position = ending_pos # self[5,5] = [5,5] # self[0,0] = 0,0

    if self[start_pos].color == :W
      @w_captured << self[start_pos].position
    elsif self[start_pos].color == :B
      @b_captured << self[start_pos].position
    end
    
    self[start_pos].position = NullPiece.instance

  end

end
