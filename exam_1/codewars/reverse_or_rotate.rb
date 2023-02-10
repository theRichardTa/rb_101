def revrot(str, sz)
  str.scan(Regexp.new('.' * sz)).map do |string|
    if string.chars.map { |char| char.to_i ** 3 }.sum.even?
      string.reverse
    else
      string << string.slice!(0)
    end
  end.join
end

p revrot("123456987654", 6) 