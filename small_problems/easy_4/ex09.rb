# number to string now
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

# prepend does exist under create new string doc
# .divmod does the division + remainder(modulo) thingy i did

# loop do is just cleaner.. didn't need the extra liner for 0 case
# since remainder is exact same as index.. could've done an array

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'