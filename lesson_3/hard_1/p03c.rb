def mess_with_vars(one, two, three)
  one.gsub!("one","two")      # two
  two.gsub!("two","three")    # three
  three.gsub!("three","one")  # one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"