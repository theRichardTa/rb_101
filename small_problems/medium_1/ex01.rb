def rotate_array(array)
  arr2 = array.clone
  arr2 << arr2.delete_at(0)
end

p rotate_array([1,2,3])

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

# teacher just copies out everything except the first entry, THEN appends it to the end

def rotate_int(int)
  (rotate_array(int.to_s.chars)).join.to_i
end

p rotate_int(1568)

def rotate_string(string)
  rotate_array(string.chars).join
end

p rotate_string("hello")