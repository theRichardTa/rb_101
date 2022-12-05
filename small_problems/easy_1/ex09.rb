# sum the digits

def sum(num)
  num.digits.inject(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# got it right.. im tired..