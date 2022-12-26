def sequence(num)
  num.positive? ? (1..num).to_a : (num..-1).to_a
end

p sequence(-5) #== [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

# exactly