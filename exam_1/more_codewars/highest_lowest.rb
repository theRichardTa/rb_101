def high_and_low(numbers)
  answer = []
  integers = numbers.split.map(&:to_i)
  answer << integers.max
  answer << integers.min
  answer.join(' ')
end