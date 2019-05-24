

def first_anagram?(str1, str2)
  perms = str1.chars.permutation.to_a
  # n! + n! = n!
  perms.include?(str2.chars)
end

# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")  

require "byebug"
def second_anagram?(str1, str2)
  str1 = str1.chars
  str2 = str2.chars
  return false if str1.length != str2.length
  str1.each do |char|
    if str2.index(char)
      index = str2.index(char)
      str2.delete_at(index)
    else
      return false
    end
  end
  return str2.empty? 
    
end
 # n^2


def third_anagram?(str1, str2)
  str1.chars.sort == str2.chars.sort
end

def fourth_anagram?(str1, str2)
    hash1 = Hash.new{|h,k| h[k] = 0}
    hash2 = Hash.new{|h,k| h[k] = 0}
    str1.each_char { |char| hash1[char] += 1 }
    str2.each_char { |char| hash2[char] += 1 }
    hash1 == hash2
end
p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")  




