def print_line(out, inn)
  puts ' ' * out + '*' + ' ' * inn + '*' + ' ' * inn + '*' + ' ' * out
end

def star(num)
  outer_spaces = 0
  inner_spaces = (num - 3) / 2

  loop do
    print_line(outer_spaces, inner_spaces)
    break if inner_spaces == 0
    outer_spaces += 1
    inner_spaces -= 1
  end

  puts '*' * num

  loop do
    print_line(outer_spaces, inner_spaces)
    break if outer_spaces == 0
    outer_spaces -= 1
    inner_spaces += 1
  end
end

star(15)
