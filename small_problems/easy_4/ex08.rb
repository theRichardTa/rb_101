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
  number = string.clone # might have to clone? don't mutate the original
  # i was right.. without clone the slive affects the original string
  if number[0] == "-"
    number.slice!(0)
    string_to_integer(number) * -1
  else 
    number.slice!(0) if number[0] == "+"
    string_to_integer(number)
  end
end


nummies = '-45689'
p string_to_signed_integer(nummies)
p nummies



p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100


# got from student.. to refactor store a negative variable boolean as true IF
# string has a - at index[0]

# then strip +/- and perform conversion.. then add back - if boolean == true