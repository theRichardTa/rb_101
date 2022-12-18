def insert_spaces(num, int)
  sprintf("%#{num}.#{num}s", "*" * int)
end

def triangle(num, position)
  if position == "topright"
    (num.downto(1)).each { |int| puts insert_spaces(num, int) }
  elsif position == "bottomright"
    (1.upto(num)).each { |int| puts insert_spaces(num, int) }
  elsif position == "topleft"
    (num.downto(1)).each { |int| puts "*" * int}
  elsif position == "bottomleft"
    (1.upto(num)).each { |int| puts "*" * int}
  end
end

triangle(9, "bottomright")
