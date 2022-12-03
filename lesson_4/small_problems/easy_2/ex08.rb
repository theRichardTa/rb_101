def prompt(msg)
  puts ">> #{msg}"
end

prompt("Please enter an integer greater than 0:")

number = gets.chomp.to_i

prompt("Enter 's' to compute the sum, 'p' to compute the product.")

operation = gets.chomp

range = (1..number)

if operation == 's'
  sum = range.inject(:+)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif operation == 'p'
  product = range.inject(:*)
  puts "The product of the integers between 1 and #{number} is #{product}."
end


# already used inject on initial solution

