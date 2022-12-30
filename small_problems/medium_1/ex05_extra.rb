def print_line(space_num, star_num)
  if star_num == 1
    puts ' ' * space_num + '*' * star_num + ' ' * space_num
  else
    puts ' ' * space_num + '*' + ' ' * (star_num - 2) + '*' + ' ' * space_num
  end
end

def diamond(num)
  space_num = num/2
  star_num = 1
  loop do
    print_line(space_num, star_num)
    break if space_num == 0
    space_num -= 1
    star_num += 2
  end
  loop do
    space_num += 1
    star_num -= 2
    print_line(space_num, star_num)
    break if star_num == 1
  end
end

diamond(9)

