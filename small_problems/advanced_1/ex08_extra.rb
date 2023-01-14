require 'pry'

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
  p new_array
  new_array
end

# merge_sort non-recursively

def merge_sort(array)
  arr2 = [array]
  loop do
    arr2.map do |ar|
      half = (ar.length / 2.0).round
      a = ar[0..half - 1]
      b = ar[(half)..-1]
      arr2 = [a, b]
      binding.pry
    end
  end
end

arr = [1, 2, 3, 4, 6]

p merge_sort(arr)