
def rotate_array(arr)
  rotated_array = arr.slice(1..(arr.size - 1 ))
  (rotated_array << arr.slice(0)).join.to_s
end

def rotate_rightmost_digits(str, to_rotate)
  len = str.size
  str
  str_to_rotate = str.chars[len-to_rotate..len]
  (str.chars[0...(len - to_rotate) ] << rotate_array(str_to_rotate)).flatten.join
end

def max_rotation(num)
  len = num.to_s.size
  result = num.to_s
  len.times do |i|
    result = rotate_rightmost_digits(result, len-i)
  end
  result.to_i
end

p max_rotation(105)