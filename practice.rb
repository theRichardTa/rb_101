arr = [1,2,3,4]

arr.each_with_index do |n, i|
  arr[i] = n + 1
end

p arr

arr = [1,2,3,4]

idx = 0
loop do
  arr[idx] += 1
  idx += 1
  break if idx >= arr.length
end

p arr