def fibonacci(num)
  answer = 0
  a = 0
  b = 0
  a = 1 if num >= 1
  b = 1 if num >= 2
  return a if num <= 2

  (num - 2).times do
    answer = a + b
    b = a
    a = answer
  end
  answer
end

p fibonacci(100_001)