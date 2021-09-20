require_relative "00_tree_node.rb"
require_relative "board.rb"

class KnightPathFinder

  attr_accessor :board, :root_node

  def initialize(pos)
    # @initial_pos = pos
    @board = Board.new(8) # Array.new(8) { Array.new(8) }
    # @root_node = PolyTreeNode.new(pos)

    # assign the root node variable to the node instance at @board[pos]
    @root_node = @board[pos.first][pos.last]
  end

  def self.valid_moves(pos)
    
  end

end

test = KnightPathFinder.new([0,0])

p test.root_node
