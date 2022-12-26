def dub_num(num)
  middle = ((num.to_s.length)/2.0).round - 1
  num1 = num.to_s[0..middle]
  num2 = num.to_s[(middle + 1)..-1]
  num1 == num2
end

def twice(num)
  if dub_num(num)
    num
  else
    num * 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10

# several solutions to my created problem..

# i could subtract 1 from the center at a later point.. wait no they set a specific edge case!!!!

# i could do even only