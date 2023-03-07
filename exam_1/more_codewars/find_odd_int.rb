def find_it(seq)
  seq.select { |num| seq.count(num).odd? }.first
end