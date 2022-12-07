arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

arr2 = arr.select do |hash|
  hash.all? do |_, array|
    array.all? do |num|
      num.even?
    end
  end
end

p arr2

# ACTUALLY PERFECT!