def max_windowed_range(array, w)
  current_max_range = nil
  for i in (0..array.length - w)
    range = array[i, w].max - array[i, w].min
    if current_max_range == nil || current_max_range < range
      current_max_range = range
    end
  end
  range
end

def MyQueue
p max_windowed_range([1,2,3,5] ,3)