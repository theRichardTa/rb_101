def rotate_array(array, num)
  arr2 = array.clone
  arr2 << arr2.delete_at(-num)
end

def rotate_rightmost_digits(int, num)
  (rotate_array(int.to_s.chars, num)).join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

p rotate_rightmost_digits(352917, 1)