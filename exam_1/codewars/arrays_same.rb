def comp(array1, array2)
  return false if ([array1] + [array2]).flatten.any? { |num| num.class != Integer }
  squares = array1.map { |num| num ** 2 }
  squares.sort == array2.sort
end

# little tricky with arr1 + arr2 if arr1 is real it cant add arr2 if arr2 is ONLY nil

# could solve this by simply checking each individually..

# i chose to trat both as arrays then flatten them..
# -> in other words, an array becomes 2d; a nil becomes [nil].. combine then flatten

# i couldve directly compared without the middle conversion to squares