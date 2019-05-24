def my_min(array)
  (0...array.length).each do |first|
    is_min = true
    (0...array.length).each do |second|
      is_min = false if array[first] > array[second] 
    end
    return array[first] if is_min == true
  end
end

def my_min2(list)
  min = list.first
  list.each { |el| min = el if min > el}
  min
end

require "byebug"
def largest_contiguous_subsum(list)
  maximum = nil
  result = []
  (0...list.length).each do |start|
    (start...list.length).each do |finish|
      sub_array = list[start..finish]
      result << sub_array
    end
  end
  result.each do |sub_array|
    maximum = sub_array.sum if (maximum == nil) || (sub_array.sum > maximum)
  end
  maximum
end

def largest_contiguous_subsum_2(list)
  max = list.first
  i = current_sum = 0
  while i < list.length
    current_sum += list[i]
    max = [current_sum, max].max
    current_sum = 0 if current_sum < 0
    i += 1
  end
  max
end

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum_2(list)
