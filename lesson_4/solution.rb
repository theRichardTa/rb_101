def sum_even_number_row(row_number)
  rows = []
  start_integer = 2
  (1..row_number).each do |current_row_number|
    rows.push(create_row(start_integer, current_row_number))
    start_integer = rows.last.last + 2
  end
  final_row_sum = 0
  rows.last.each { |num| final_row_sum += num }
  final_row_sum
end

def create_row(start_integer, row_length)
  row = []
  loop do
    row.push(start_integer)
    start_integer += 2
    break if row.length == row_length
  end
  row
end

puts ">>Which row would you like to sum?"
target_row = gets.chomp.to_i 

puts ">>Row #{target_row}'s values sum to #{sum_even_number_row(target_row)}."