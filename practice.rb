def greeting
  puts 'Hello!'
end

number_of_greetings = 2
current_greeting = 1

while current_greeting <= number_of_greetings
  greeting
  current_greeting += 1
end