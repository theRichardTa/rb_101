def string_to_integer(string)
  digits_hash = Hash["0",0, "1",1, "2",2, "3",3, "4",4, "5",5, "6",6, "7",7, "8",8, "9",9]
  integers_array = []
  string.chars.reverse.each do |value|
    integers_array << digits_hash[value]
  end
  running_total = 0
  integers_array.each_with_index do |int, index|
    running_total += int * (10 ** index)
  end
  running_total
end

def string_to_signed_integer(string)
  digits_hash = Hash["0",0, "1",1, "2",2, "3",3, "4",4, "5",5, "6",6, "7",7, "8",8, "9",9]
  number = string.clone 
  negative = false
  negative = true if number[0] == "-"

  number.slice!(0) if digits_hash.key?(number[0]) != true
  answer = string_to_integer(number)
  if negative
    - answer
  else
    answer
  end
end


nummies = '-45689'
p string_to_signed_integer(nummies)
p nummies



p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

# gross