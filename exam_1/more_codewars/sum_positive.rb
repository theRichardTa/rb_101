def positive_sum(arr)
  arr.select { |num| num.positive? }.sum
end
