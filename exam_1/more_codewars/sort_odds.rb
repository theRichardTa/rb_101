def sort_array(source_array)
  odds = source_array.select { |num| num.odd? }.sort
  source_array.map { |num| num.odd? ? odds.shift : num }
end

# be careful with shift / unshift and misremembering