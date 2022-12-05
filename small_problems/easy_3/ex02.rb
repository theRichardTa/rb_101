# learning here.. code is verbose on purpose

def prompt(msg)
  puts "==> #{msg}"
end

def ask_number(which)
  prompt("Enter the #{which} number:")
end

def puts_answer(operator, numbers)
  prompt("#{numbers[0]} #{operator} #{numbers[1]} = #{numbers.inject(operator)}")
end

which_numbers = ["first", "second"]
operators = [:+, :-, :*, :/, :%, :**]

numbers_array = []

which_numbers.each do |value|
  ask_number(value)
  numbers_array << gets.chomp.to_f
end

operators.each do |operator|
  puts_answer(operator, numbers_array)
end

# unexpected puts value for the symbols.. glad i went through with trying it out

# another way to solve the symbol problem is to have everything as STRINGS
# and use eval(string).. which evaluates "variable1 % variable2" as if it were nonstring