def reversed_number(num)
  num.to_s.chars.reverse.join.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1

# oops.. right idea just extra steps..
# string can already be reversed on.. did not need to chars/split into array THEN reverse and rejoin

