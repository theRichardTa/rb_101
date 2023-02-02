# can't use ** ...
# also am i manually writing out the nil and 1 case?

def power(base, exponent)
  if exponent < 0
    return nil
  elsif exponent == 0
    return 1
  else
    exponent.times.with_object([]) { |_, array| array << base }.inject(:*)
  end
end

# above we did the with object and directly called on it since that's what is returned

# could also define the array then call on it after with 2 extra lines

# student's have cleaner code by injecting a 1..
# it doesnt affect proper inputs because x * 1 = x..
# but it rescues the 0 case

# I don't really understand hwo they get the nil output though...