def multiply(num1, num2)
  num1 * num2
end

def square(num, power=2)
  new_num = num
  (power-1).times do |iterate|
    new_num = multiply(new_num, num)
  end
  new_num
end

p square(5, -1) 
p square(-8) == 64

# this did generalize but doesn't look that great
# also this doesn't work for 0 and negatives.. i went in depth before on one
# that does..

