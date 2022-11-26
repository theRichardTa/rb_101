

array_of_rows = []

current_row = []

puts ">>Which row would you like to sum?"
target_row = gets.chomp.to_i 

starting_num = 0
current_row_length_target = 1

# array_of_rows LOOP
loop do
  starting_num += 2
  current_row.push(starting_num)
  
  # sends current row to array_of_rows and forms new current_row
  if current_row.length == current_row_length_target
    array_of_rows.push(current_row)
    current_row_length_target += 1
    current_row = []
  end

  break if array_of_rows.length == target_row

end


# answer / summation code 
answer = 0
array_of_rows.last.each {|value| answer += value}


puts ">>Row #{target_row}'s values sum to #{answer}."
