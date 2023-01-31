def persistence(n)
  counter = 0
  loop do
    break if n.to_s.length == 1
    n = n.digits.inject(:*)
    counter += 1
  end
  counter
end