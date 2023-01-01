def fibonacci_last(num)
  answer = 0
  a = 0
  b = 0
  a = 1 if num >= 1
  b = 1 if num >= 2
  return a if num <= 2

  (num - 2).times do
    answer = a + b
    b = a % 10
    a = answer % 10
  end
  answer.to_s[-1].to_i
end

# while this would work.. it's hacked and takes forever
# almost certainly not what the teacher wanted




# def fibonacci_last(num)






p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4