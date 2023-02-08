def digital_root(n)
  until n.digits.size == 1
    n = n.digits.sum
  end
  n
end


p digital_root(942)

