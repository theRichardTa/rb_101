require 'pry'

def merge_sort(array)
  n = array.length
  return array if n <= 1
  sub_size = 1
  while sub_size < n
      i = 0
      while i < n - sub_size
          merge(array, i, i+sub_size-1, [i+sub_size*2-1, n-1].min)
          i += sub_size*2
      end
      sub_size *= 2
  end
  return array
end

def merge(array, start, middle, ending)
  left_part = array[start..middle]
  right_part = array[(middle+1)..ending]
  i = 0
  j = 0
  k = start
  while i < left_part.size && j < right_part.size
      if left_part[i] <= right_part[j]
          array[k] = left_part[i]
          i += 1
      else
          array[k] = right_part[j]
          j += 1
      end
      k += 1
  end
  while i < left_part.size
      array[k] = left_part[i]
      i += 1
      k += 1
  end
  while j < right_part.size
      array[k] = right_part[j]
      j += 1
      k += 1
  end
  p array
end

p merge_sort([5,2,19,18,3,5,90,54])