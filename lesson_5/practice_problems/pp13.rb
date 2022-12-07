arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

arr2 = arr.sort_by do |sub_array|
  sub_array.dup.delete_if do |num|
    num.even?
  end
end

p arr2

# i came to this method because i failed at mapping or something..

# i had ah-ha moment with .delete but it was destructive.. but then it worked
# with .dup

# should've been select from the beginning

arr3 = arr.sort_by do |sub_array|
  sub_array.select do |num|
    num.odd?
  end
end

p arr3 == arr2
