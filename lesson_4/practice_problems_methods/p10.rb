yep = [1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# map return =  [1, nil, nil]

# console: 2 break 3

p yep