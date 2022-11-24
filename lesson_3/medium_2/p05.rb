def tricky_method(a_string_param, an_array_param, another)
  a_string_param += "rutabaga"
  an_array_param += ["rutabega"]
  another += "LOW"

  return a_string_param, an_array_param, another
end

my_string = "pumpkins"
my_array = ["pumpkins"]
yepper = "heal"


# my goofy looking answer after taking teacher's method
# my_string = tricky_method(my_string, my_array)[0]
# my_array = tricky_method(my_string, my_array)[1]

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# bro this solution is doing all kinds of weird stuff i aint seen before

# 1) returning two values combined into an array is smart
# 2) reassigning two variables to an array with two values takes them
#    sequentially?

# teacher's answer

my_string, my_array, yepper = tricky_method(my_string, my_array, yepper)

puts ""

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
puts "it works with third one too? #{yepper}"