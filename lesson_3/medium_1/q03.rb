def factors(number)
  divisor = number
  factors = []
  exit if number <= 0 
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

p factors(0)

# bonus1: number %(modulo) divisor == 0  is seeing if the current divisor is a
# factor since it would have a remainder of 0

# bonus2: it's setting the return value of the method as the array of factors

# teacher used a while divisor > 0but it's functionally the same here