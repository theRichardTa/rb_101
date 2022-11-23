# define a new empty string
# need to iterate over an array and extract every string value
# put each string into the new string
# should there be a space?
# stop after the last index of the array
# print the new string


array_strings = ['hello', 'yep', 'twenty', 'fourteen']

def say_it(array)
  new_string = ""
  array.each do |string|
    new_string << string + " "
    # new_string << (string + " ") unless array.last?
    # new_string << string if array.last?
    # this doesn't work.. I could do something with iterations to force it but whatever
  end
  puts new_string
end

say_it(array_strings)