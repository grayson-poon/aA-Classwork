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

  def self.valid_moves(current_pos) # 0,0 [-1,-2] [-1,-2] 0-7
    possible_translations = [[1,2], [1,-2], [-1,2], [-1,-2], [2,1], [2,-1], [-2,1], [-2,-1]]

    # [2,4] => [3,6], [3,2]
    possible_positions = []
    possible_translations.each.with_index do |translation, idx|
      sub_arr.each.with_index do |ele, j|
        possible_positions << [current_pos[j] + sub_arr[j]]
      end
    end

  end

end

test = KnightPathFinder.new([0,0])

# KnightPathFinder.valid_moves([2,4])

