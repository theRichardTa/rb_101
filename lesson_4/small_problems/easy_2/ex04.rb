CURRENT_YEAR = Time.now.year

puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retire_age = gets.chomp.to_i

years_left = retire_age - age

puts "It's #{CURRENT_YEAR}. You will retire in #{CURRENT_YEAR + years_left}."

puts "You have only #{years_left} years of work to go!"

# i know it'll say 1 years in that case.. could do an unless or if case

# oh they want me to use time class from hint.. okay  variable = Time.new
# notice capital T in time.. then call .year on that variable

# or Time.now for the moment code is executed?