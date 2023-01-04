def triangle(s1, s2, s3)
  sorted = [s1, s2, s3].sort
  return :invalid unless sorted[0] + sorted[1] > sorted[2]
  return :invalid if sorted.include?(0) # is this even necessary?

  case
  when s1 == s2 && s1 == s3
    :equilateral
  when s1 == s2 || s1 == s3 || s2 == s3
    :isosceles
  else
    :scalene
  end
end

p triangle(0,0,0)

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid