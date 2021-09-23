require_relative "piece"
require_relative "slideable"

class Queen < Piece

  include Slideable


  def symbol
    @symbol = :Q
  end

  private

  def move_dirs
    horizontal_dirs + diagnonal_dirs
  end

end

