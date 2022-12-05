puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percent = gets.chomp.to_f

tip = bill * (tip_percent / 100)

total = (bill + tip)

puts "The tip is $#{format("%.2f", tip)}"
puts "The total is $#{format("%.2f", total)}"

# ez

# learn about Kernel#format to always have 2 decimals for money

# sprintf("%.<number of digits after decimal><f>, number")
# example =  format("%.4f", 100.123456789) should be 100.1235 because 4 digits
# and rounding

p format("%.4f", 100.123456789)