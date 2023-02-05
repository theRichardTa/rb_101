def delete_digit(n)
  digits = n.to_s.chars
  new_numbers = digits.map.with_index do |digit, index|
    (digits[0...index] + digits[index+1..-1]).join.to_i
  end
  new_numbers.max
end

p delete_digit(152)

# exactly what student did but spaced out a bit more to avoid 80 chars
