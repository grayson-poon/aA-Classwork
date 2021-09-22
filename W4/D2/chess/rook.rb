require_relative "piece"
require_relative "slideable"

class Rook < Piece

  include Slideable

  def initialize
    @symbol = :R
  end

  private

  def move_dirs
    possible_translations = [
    [0, 7]
    [7, 0]
    [0, -7]
    [-7, 0]
    ]
  end

end