def hexadecimal_to_integer(string)
  digits_hash = Hash["0",0, "1",1, "2",2, "3",3, "4",4, "5",5, "6",6, "7",7, "8",8, "9",9, "a",10, "b",11, "c",12, "d",13, "e",14, "f",15,]
  integers_array = []
  string.chars.reverse.each do |value|
    integers_array << digits_hash[value.downcase]
  end
  running_total = 0
  integers_array.each_with_index do |int, index|
    running_total += int * (16 ** index)
  end
  running_total
end

p hexadecimal_to_integer('4D9f') == 19871

# gottem