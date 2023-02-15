def square_digits num
  num.to_s.chars.map { |dig| dig.to_i ** 2}.join.to_i
end