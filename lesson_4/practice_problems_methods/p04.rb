yep = ['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# ok so this will return a new hash since that's what got passed in..
# value represents the array the value of every iteration in ['ant', 'bear', 'cat']
# so hash['a'] = 'ant'.. and so on

# return will be [{'a' => 'ant'}, etc..]


p yep

# ay perfecto..