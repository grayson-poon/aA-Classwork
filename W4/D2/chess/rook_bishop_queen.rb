require_relative "piece"
require_relative "slideable"

class RookBishopQueen < Piece

  include Slideable

  def symbol
    @symbol
  end

  private

  def move_dirs
    
  end

end