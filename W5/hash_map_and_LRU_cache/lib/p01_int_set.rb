require "set"

class MaxIntSet

  attr_reader :max

  def initialize(max)
    @store = Array.new(max, false)
    @max = max
  end

  def insert(num)
    if num > max || num < 0
      raise 'value_error' 
    else
      self.add(num)
      @store[num] = true
    end

  end

  def remove(num)
    self.delete(num)
  end

  def include?(num)
    if @store[num] == true
      return true
    else
      return false
    end


    # @store.each do |ele|
    #   return true if ele == num
    # end

    # return false
  end

  private

  def is_valid?(num)
  end

  def validate!(num)
  end
end


class IntSet
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
  end

  def remove(num)
  end

  def include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
  end

  def remove(num)
  end

  def include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
  end
end
