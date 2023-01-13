array = [5]

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

def merge_sort(array)
  half = (array.length / 2.0).round
  a = array[0..half - 1]
  b = array[(half)..-1]

  p a
  p b
  p "-------------"
  a = merge_sort(a) if a.length > 1
  b = merge_sort(b) if b.length > 1

  merge(a, b)
end

p merge_sort(array)

