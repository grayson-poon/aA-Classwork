require_relative "null_piece"
require_relative "piece"


class Board

  attr_reader :rows

  def initialize
    @rows = Array.new(8) { Array.new(8) }

    @rows.each.with_index do |row, row_i|
      if [0, 1].include?(row_i)
        row.each.with_index do |slot, col_i|
          @rows[row_i][col_i] = Piece.new(:B, [row_i, col_i])
        end
      elsif [6, 7].include?(row_i)
        row.each.with_index do |slot, col_i|
          @rows[row_i][col_i] = Piece.new(:W, [row_i, col_i])
        end
      end
    end

    @rows.each.with_index do |row, row_i|
      row.each.with_index do |slot, col_i|
        if slot == nil
          @rows[row_i][col_i] = NullPiece.new
        end
      end
    end
  end

  def [](pos)
    row, col = pos
    @rows[row][col] # self
  end

  def []=(pos, val)
    row, col = pos
    @rows[row][col] = val
  end

  def move_piece(color, start_pos, ending_pos)
    if @rows[start_pos.first][start_pos.last].is_a?(NullPiece)
      raise "No starting piece here"
    end

    if !(0..7).to_a.include?(ending_pos.first) || !(0..7).to_a.include?(ending_pos.last)
      raise "Illegal move"
    end

    @rows[start_pos.first][start_pos.last], @rows[ending_pos.first][ending_pos.last] = @rows[ending_pos.first][ending_pos.last],  @rows[start_pos.first][start_pos.last]
    # @rows[start_pos], @rows[ending_pos] = @rows[ending_pos], @rows[start_pos]
  
  end


end

b = Board.new

p b.move_piece(:B, [0, 0], [5, 0])
puts "----------"
p b.[]([5,4])
p b.[5,4]


