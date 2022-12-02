# (1..99).to_a.each { |num| puts num if num.odd? }

# many different solutions.. teacher started at 1 then looped +2 until 99

# 1.upto(99) {|num| puts num if num.odd? } # ok this works directly on integers

puts (1..99).to_a.select { |num| num % 2 == 1 }

# ogi all work coolcool
