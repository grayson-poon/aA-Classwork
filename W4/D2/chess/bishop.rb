require_relative "piece"
require_relative "slideable"

class Bishop < Piece

  include Slideable

  def symbol
    @symbol = :BP
  end

  private

  def move_dirs
    diagnonal_dirs
  end

end