def merge(arr1, arr2)
  new_array = []
  a = arr1.clone
  b = arr2.clone

  loop do
    if b.empty?
      new_array << a.shift
    elsif a.empty?
      new_array << b.shift
    else
      case a.first <=> b.first
      when -1 then new_array << a.shift
      when 1 then new_array << b.shift
      else
        new_array << a.shift
        new_array << b.shift
      end
    end
    break if a.empty? && b.empty?
  end
  new_array
end

def merge_sort_iterative(array)
  arr = array
  group_size = 1

  while group_size * 2 <= arr.length
    result = []
    index = 0

    until index >= arr.length
      arr1 = arr[index, group_size]
      arr1.reject! { |ele| ele == nil}
      p arr1
      arr2 = arr[index + group_size, group_size]
      arr2.reject! { |ele| ele == nil}
      p arr2
      result.concat(merge(arr1, arr2))
      index += group_size * 2
    end

    arr = result
    group_size *= 2
  end
  arr
end


arr = [1,7,3,19, 27, 4, 2]

p merge_sort_iterative(arr)