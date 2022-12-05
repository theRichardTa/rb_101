[[[1242452, 2, 3], [2], [3], [4]], [['a'], ['b'], ['c']]].map do |element1|
  element1.map do |element2|
    element2.partition do |element3|
      p element3
      element3.size > 15
    end
  end
end

