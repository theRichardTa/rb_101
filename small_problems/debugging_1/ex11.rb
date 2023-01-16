arr = ["9", "8", "7", "10", "11"]
p (arr.sort do |x, y|
    y.to_i <=> x.to_i
  end)

  # v nice.. got it

  # what about difference btween sort and sort_by though?