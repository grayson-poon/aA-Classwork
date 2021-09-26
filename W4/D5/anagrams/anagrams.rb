def first_anagram?(str_1, str_2)
  new_str1 = str_1.split("")
  anagrams = new_str1.permutation(new_str1.length).to_a
  arr = []
  anagrams.each do |ele|
    arr << ele.join("")
  end
  
  if arr.include?(str_2)
    return true
  end

  return false
end

def first_point_five_anagram?(str_1, str_2)
  
end

def permutations(str)
  return [str] if str.length <= 1

  first = str[0]
  # puts first
  # puts "---------"
  permutations(str[1..-1]).each_with_object([]) do |perm, result|
    puts perm
    puts "---------"
    (0..perm.length).each { |idx| result << perm.dup.insert(idx, first) }
    puts result
    puts "---------"
  end
end

p permutations("abc")

# "cat"
# "tac" , "cta" , "atc" , "cat" , "act" , "tca"

# p first_anagram?("boat", "tocb")

def second_anagram?(str_1, str_2)
  one = str_1.split("")
  two = str_2.split("")

  one.each do |char|
    if !two.index(char).nil?
      idx = two.index(char)
      two.delete_at(idx)
    else
      return false
    end
  end

  (two.empty? ? true : false)
end

# p second_anagram?("boatss", "boatss")

def third_anagram?(str_1, str_2)
  return str_1.split("").sort == str_2.split("").sort
end

# p third_anagram?("sss", "ssss")

def fourth_anagram?(str_1, str_2)
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)

  str_1.each_char do |char|
    hash1[char] += 1
  end

  str_2.each_char do |char|
    hash2[char] += 1
  end

  return hash1 == hash2
end

# p fourth_anagram?("boatsss", "baossst")

def fifth_anagram?(str_1, str_2)
  counter_hash = Hash.new(0)

  str_1.each_char do |char|
    counter_hash[char] += 1
  end

  str_2.each_char do |char|
    counter_hash[char] -= 1
  end

  counter_hash.values.all? { |v| v == 0 }
end

# p fifth_anagram?("boatssss", "baossst")

arr = ["b", "o", "a", "t", "s", "s", "s", "s", "s"]
