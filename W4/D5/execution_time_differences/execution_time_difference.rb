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
p my_min(list)  # =>  -5