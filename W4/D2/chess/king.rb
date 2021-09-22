require_relative "piece"
require "stepable"

class King

  include Stepable

  def symbol
    @symbol = :K
  end

  protected

  def move_diffs
    possible_moves = [[1,0], [1, 1], [0, 1], [-1, 1], [-1, 0], [-1, -1], [0, -1], [1, -1]]
  end

end