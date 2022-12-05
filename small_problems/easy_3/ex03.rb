# no spaces means use strip and the other methods

puts "Please write word or multiple words:"
words = gets.chomp
words_counter = words.delete(' ').length

puts "There are #{words_counter} characters in \"#{words}\"."

# we got it.. same theory and execution as teacher