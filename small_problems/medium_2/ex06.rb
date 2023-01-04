def triangle(a1, a2, a3)
  sorted = [a1, a2, a3].sort # didn't need to sort this time

  case
  when sorted.include?(0), sorted.sum != 180
    :invalid
  when sorted.include?(90)
    :right
  when sorted.any? { |angle| angle > 90 }
    :obtuse
  else
    :acute
  end
end


p triangle(90, 89, 1)

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid