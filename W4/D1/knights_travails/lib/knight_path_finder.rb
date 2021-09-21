require_relative "00_tree_node.rb"
require_relative "board.rb"

class KnightPathFinder

  attr_accessor :board, :root_node

  def initialize(pos)
    # @initial_pos = pos
    @board = Board.new(8) # Array.new(8) { Array.new(8) }
    # @root_node = PolyTreeNode.new(pos)

    # assign the root node variable to the node instance at @board[pos]
    @root_node = @board[pos] #@board[pos.first][pos.last]
  end

  def [](pos)
    row, col = pos
    return @board[row][col]
  end

  def self.valid_moves(current_pos)
    knight_translations = [[1,2], [1,-2], [-1,2], [-1,-2], [2,1], [2,-1], [-2,1], [-2,-1]]

    possible_positions = []
    knight_translations.each do |translation|
      translated = [(current_pos.first + translation.first), (current_pos.last + translation.last)]
      possible_positions << translated if translated.all? { |num| num >= 0 && num <= 7}
    end

    return possible_positions
  end

end

test = KnightPathFinder.new([0,1])
p test.root_node

# print KnightPathFinder.valid_moves([1,2])

