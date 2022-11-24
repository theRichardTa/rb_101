limit = 15

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"

# limit variable is defined outside scope of method and not passed in as an
# argument

# to fix, could modify method to take 3 arguments, new one being the limit

# or hardcode the limit directly into the method..

# i prefer the first option..