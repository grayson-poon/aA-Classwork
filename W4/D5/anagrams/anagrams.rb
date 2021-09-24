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

# "cat"
# "tac" , "cta" , "atc" , "cat" , "act" , "tca"

p first_anagram?("boat", "tocb")