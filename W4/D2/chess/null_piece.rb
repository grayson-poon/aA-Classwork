require_relative "piece"
require "singleton"

class NullPiece < Piece

  include Singleton

  attr_reader :color, :symbol

  def initialize
    @color = nil
    @symbol = nil
  end

  def inspect
    "<#{NullPiece.instance}>"
  end


end