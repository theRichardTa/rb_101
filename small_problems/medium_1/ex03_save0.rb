def rotate_array(array, num)
  arr2 = array.clone
  arr2 << arr2.delete_at(-num)
end

def rotate_rightmost_digits(int, num)
  (rotate_array(int.chars, num)).join
end

def max_rotation(int)
  counter = int.to_s.length
  new_int = int

  loop do
    break if counter <= 1
    
    new_int = rotate_rightmost_digits(new_int.to_s, counter)
    counter -= 1
  end
  sprintf("%0#{int.to_s.length}d", new_int.to_i)
end


p max_rotation(102305) #== 15 # the leading zero gets dropped


# do extras

# p max_rotation(50000325)


p max_rotation(735291) #== 321579
p max_rotation(3) #== 3
p max_rotation(35) == 53
p max_rotation(105) 
p max_rotation(8_703_529_146) == 7_321_609_845

# do extras

p max_rotation(50000325)