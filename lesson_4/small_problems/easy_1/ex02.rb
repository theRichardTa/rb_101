# create an .odd? method which can take neg, 0, or pos

def is_odd?(num)
  num % 2 != 0
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

# derp.. could also write as num % 2 == 1 since there IS a remainder

# my method already works with .remainder.. ill make another too

# num.remainder(2) != 0  DOES WORK

def is_odde?(num)
  num.remainder(2).abs == 1
end
puts ""
puts is_odde?(2)    # => false
puts is_odde?(5)    # => true
puts is_odde?(-17)  # => true
puts is_odde?(-8)   # => false
puts is_odde?(0)    # => false
puts is_odde?(7)    # => true

# could also do && with 1 and -1