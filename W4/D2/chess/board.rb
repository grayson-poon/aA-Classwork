require_relative "null_piece"


class Board

  attr_reader :rows

  def initialize
    @rows = Array.new(8) { Array.new(8) }
    @rows.each.with_index do |row, row_i|
      row.each.with_index do |slot, col_i|
        if slot == nil
          @board[row_i][col_i] = NullPiece.new
        end
      end
    end
  end

  def move_piece(start_pos, ending_pos)
    if start_pos == nil 
      raise "No starting piece here"
    end
  end

  

end

b = Board.new
p b