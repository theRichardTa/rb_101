a = [2, 4]

b = [0, 10]


yo = a.product(b).map do |num1, num2, num3|
  num1 + num2
end



p yo.sort