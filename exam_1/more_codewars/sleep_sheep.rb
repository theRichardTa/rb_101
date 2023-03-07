def count_sheep(num)
  string = ""
  num.times do |num|
    string << "#{num + 1} sheep..."
  end
  string
end

# woulda been better with a map.join