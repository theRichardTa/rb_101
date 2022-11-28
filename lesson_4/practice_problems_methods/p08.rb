arr = [1, 2, 3, 4, 5]
p arr.take(2)

# according to doc.. array.take will return a new array containing the first (n)
# elements of the original array. it is not destructive

# arr.take(2) should return [1, 2]

p arr

# perfect

p arr.take(0)

# array.take ALWAYS returns an array.. even an empty one for (0)..
# also .take REQUIRES one argument
