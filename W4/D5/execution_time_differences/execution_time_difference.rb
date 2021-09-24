# require "byebug"

# def my_min(array)
#   # debugger
#   min = array.first
#   array.each.with_index do |ele1, i1|
#     array.each.with_index do |ele2, i2|
#       if i2 != i1 && ele1 < min
#         min = ele1
#       # elsif ele2 < ele1
#       #   min = ele2
#       end
#     end
#   end

#   return min
# end

def my_min(array)
  i = 0
  min = array.first

  while i < array.length
    if array[i] < min
      min = array[i]
    end
    i += 1
  end

  return min
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5


# def largest_contiguous_subsum(array)
#   sub_arrs = []
#   (0...array.length-1).each do |first|
#     (first..array.length - 1).each do |second|
#        sub_arrs << array[first..second]
#     end
#   end

#   largest = sub_arrs.shift.sum
#   sub_arrs.each do |arr|
#     if arr.sum > largest
#       largest = arr.sum
#     end
#   end
#   largest
# end

def largest_contiguous_subsum(array)

  array.length.times do
    array.each.with_index do |ele,i|
      
    end
  end
end

# list = [5, 3, -7]
# p largest_contiguous_subsum(list) # => 8

# list2 = [2, 3, -6, 7, -6, 7]
# p largest_contiguous_subsum(list2)

# list3 = [-5, -1, -3]
# p largest_contiguous_subsum(list3)

