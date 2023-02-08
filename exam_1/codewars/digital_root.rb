# RECURSIVELY

def digital_root_r(n)
  sum = n.digits.sum
  sum.digits.length == 1 ? sum : digital_root(sum)
end

# non-recursively

def digital_root(n)
  until n.digits.size == 1
    n = n.digits.sum
  end
  n
end

# until loops always return nil.. must explicitly write what to return afterwards