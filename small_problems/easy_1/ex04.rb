# how many?
# put into hash

def count_occurrences(stuff)
  stuff.each_with_object({}) do |thing, hash|
    if hash.keys.include?(thing)
      hash[thing] += 1
    else
      hash[thing] = 1
    end
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

p count_occurrences(vehicles)

# ok so they didnt ACTUALLY want an array...


def count_occurrences2(stuff)
  uniq_things_array = stuff.uniq
  uniq_things_array.each do |thing|
    puts "#{thing} => #{stuff.count(thing)}"
  end
end


vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

puts ""
count_occurrences2(vehicles)

# along the similar line to teacher's on second answer here..

# add .downcase for case insensitivity

# student had answer of selecting into new array.. then .length of that array..
# that gives word + occurences then deletes those values.. pretty smart