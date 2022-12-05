# def calculate_bonus(salary, status)
#   status ? (salary / 2) : 0
# end



# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000

# suuuuuuuper shorthanded that



def calculate_bonus(salary, status)
  if status
    salary / 2
  else
    0
  end
end


puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000