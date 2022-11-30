def stringy(int, start = 1)
  string = ''
  int.times do |i|
    case start
    when 1
      string << '1' if i.even?
      string << '0' if i.odd?
    when 0
      string << '0' if i.even?
      string << '1' if i.odd?
    end
  end
  string
end

puts stringy(6, 1) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(7, 0) == '0101010'

# my answer is fine.. couldve one-linered if condition but it'd be long

# some students did my inital thought.. array filled with elements
# then iterate over the elements and reassign based on whatever