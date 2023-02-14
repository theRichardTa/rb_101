def binary_array_to_number(arr)
  arr = arr.join.to_i.to_s.chars.map(&:to_i)
  arr.reverse.map.with_index { |num, index| num * ( 2 ** index ) }.sum
end 

