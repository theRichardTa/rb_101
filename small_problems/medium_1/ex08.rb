# def fibonacci(num)
#   return 1 if num == 1
#   return 1 if num == 2
#   fibonacci(num - 2) + fibonacci(num - 1)
# end

# p fibonacci(1) == 1
# p fibonacci(2) == 1
# p fibonacci(3) == 2
# p fibonacci(4) == 3
# p fibonacci(5) == 5
# p fibonacci(12) == 144
# p fibonacci(20) == 6765

def fibonacci_tail(nth, acc1, acc2)
  if nth == 1
    acc1
  elsif nth == 2
    acc2
  else
    fibonacci_tail(nth - 1, acc2, acc2 + acc1)
  end
end

def fibonacci(nth)
  fibonacci_tail(nth, 1, 1)
end

p fibonacci(11)

# idk what tail recursion is but it seems like it skipping even attemping to
# get an answer until it's down to the base level