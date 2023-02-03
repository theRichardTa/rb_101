def find_suspects(pockets, allowed_items)
  pockets.keys.each do |key|
    pockets[key] = [] if pockets[key] == nil
  end
  return nil if pockets.empty? || pockets.values.empty?
  answer = pockets.keys.select do |person|
    !pockets[person].all? do |item|
      allowed_items.include?(item)
    end
  end
  answer.empty? ? nil : answer
end

p find_suspects({mike: nil}, [2, 3])