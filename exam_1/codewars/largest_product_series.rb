def greatest_product(n)
  products = []
  (n.length-4).times do |index|
    products << n.chars[index, 5].map { |char| char.to_i }.inject(:*)
  end
  products.max
end

greatest_product("123834539327238239583")