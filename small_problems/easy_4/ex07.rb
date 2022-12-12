# string to number the long way


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

# ^ is not exponents.. ** is


p string_to_integer('4321') == 4321
p string_to_integer('570') == 570