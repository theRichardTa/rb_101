def format_off(array)
  string = ''
  array2 = array.to_h.keys

  if array.size == 2
    string = "#{array2[0]} and #{array2[1]} are"
    return string
  elsif array.size == 1
    string = " #{array2[0]} is"
    return string
  end

  array2.each_with_index do |num, index| 
    if index == 0
      string += "s #{num}, "
    elsif index == (array.size - 1) 
      string += "and #{num} are"
    else
      string += "#{num}, "
    end
  end
  string
end

def format_on(array)
  string = ''
  array2 = array.to_h.keys

  if array.size == 2
    string = "#{array2[0]} and #{array2[1]} are"
    return string
  elsif array.size == 1
    string = "#{array2[0]} is"
    return string
  end

  array2.each_with_index do |num, index| 
    if index == 0
      string += "#{num}, "
    elsif index == (array.size - 1) 
      string += "and #{num} are"
    else
      string += "#{num}, "
    end
  end
  string
end










def lights(num)
  hash = {}
  1.upto(num) { |number| hash[number] = 0 }
  1.upto(num) do |number|
    hash.map do |key, value|
      hash[key] += 1 if key % number == 0
      # binding.pry
    end
  end
  on, off = hash.partition { |key, value| value.odd? }
  "Light#{format_off(off)} now off; #{format_on(on)} on."
end

p lights(5)
p lights(10)
p lights(2)

# i spent entirely too much time on this but it's done to perfection. though verbose
# my methods are too long and I'm sure there's a better way to do it