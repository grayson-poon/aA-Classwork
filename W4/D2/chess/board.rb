require_relative "null_piece"
require_relative "piece"


class Board

  attr_reader :rows

  def initialize
    @rows = Array.new(8) { Array.new(8) }

    # @rows.each.with_index do |row, i|
    #   if [0, 1, 6, 7].include?(i)
    #     row.map! { |slot| slot = Piece.new(:B, @rows, ) }
    #   end
    # end

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

  def move_piece(color, start_pos, ending_pos)
    if start_pos == nil 
      raise "No starting piece here"
    end

    if !rows.include?(ending_pos.first) || !rows.include?(ending_pos.last)
      raise "Illegal move"
    end

    @rows[start_pos.first][start_pos.last], @rows[ending_pos.first][ending_pos.last] = @rows[ending_pos.first][ending_pos.last],  @rows[start_pos.first][start_pos.last]


  end

  

end

b = Board.new
p b
