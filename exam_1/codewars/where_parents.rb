def find_children(dancing_brigade)
  dancing_brigade.chars.group_by { |char| char.downcase }
    .values.sort_by { |array| array[0].downcase }
    .map { |array| array.sort }.flatten.join
end

p find_children("wefhAwezzifuhwuZzazzzeofh")