

def bad_two_sum?(arr, target_sum)
  for i in (0...arr.length)
    for j in (i+1...arr.length)
      return true if arr[i] + arr[j] == target_sum
    end
  end
  false
end
# n^2

def okay_two_sum?(arr, target_sum)
  arr.sort!
  for i in (0...arr.length)
    targ = target_sum - arr[i]
    return true if (0...i).bsearch{|j| arr[j] == targ}
    return true if (i+1...arr.length).bsearch{|j| arr[j] == targ}
  end
  false

end 
# nlogn + n*(2logn) = nlogn

def decent_two_sum?(arr, target_sum)
  hash = Hash.new
  arr.each do |ele|
    return true if hash[target_sum - ele]
    hash[ele] = 1
  end
  false 
end


arr = [0, 1, 5, 7]
p bad_two_sum?(arr, 6)
p bad_two_sum?(arr, 10)
p okay_two_sum?(arr, 6)
p okay_two_sum?(arr, 10)
p decent_two_sum?(arr, 6)
p decent_two_sum?(arr, 10)