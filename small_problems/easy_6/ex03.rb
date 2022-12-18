require "pry"

def find_fibonacci_index_by_length(digits)
  fib_array = [1, 1]

  until fib_array.last.to_s.length == digits
    fib_array << fib_array[-1] + fib_array[-2]
  end

  fib_array.length
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
