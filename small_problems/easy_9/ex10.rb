def buy_fruit(array)
  array.each.with_object([]) do |inner_array, new_array|
    inner_array[1].times { new_array << inner_array[0] }
  end
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
["apples", "apples", "apples", "orange", "bananas","bananas"]

# i also ran into the problem earler where fruit * quanity did => appleappleapple

# solve this by making fruit an array to abuse array's properties with multiplying

# [banana] * 3 = [ban, ban, ban] ukno