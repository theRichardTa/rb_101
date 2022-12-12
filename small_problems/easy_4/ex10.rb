DIGITS = Hash[0,'0', 1,'1', 2,'2', 3,'3', 4,'4', 5,'5', 6,'6', 7,'7', 8,'8', 9,'9']

def integer_to_string(num)
  string = ""
  number = num.clone

  string << DIGITS[number] if number == 0
  until number == 0
    string.insert(0, DIGITS[(number % 10)])
    number /= 10
  end
  string
end

def signed_integer_to_string(num)
  if num > 0
    integer_to_string(num).prepend("+")
  elsif num < 0
    integer_to_string(num.abs).prepend("-")
  else
    integer_to_string(num)
  end
end


p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'

# teacher did a case with number <=> 0
# 3 possible cases.. 1, -1, 0(else)

# example of student refactor

def signed_integer_to_string(integer)
  sign = ['', '+', '-'][integer <=> 0]
  sign + integer_to_string(integer.abs)
end

