require_relative "00_tree_node.rb"

class Board

  attr_reader :board

  def initialize(size)
    @board = Array.new(size) { Array.new(size) }

    # create an array of (board.length ** 2) node instances from "1"..."n"
    nodes = []
    node_names = (1..(@board.length ** 2)).to_a.map!(&:to_s)
    node_names.each do |value|
      nodes << PolyTreeNode.new(value)
    end

    # set each element in @board to a single node instance
    @board.each.with_index do |row, row_i|
      row.each.with_index do |slot, col_i|
        @board[row_i][col_i] = nodes.shift
      end
    end

  end

  def [](pos)
    row, col = pos
    return @board[row][col]
  end

end

board = Board.new(5)

p board