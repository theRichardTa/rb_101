produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}



def select_fruit(produce)
  keys_array = produce.keys
  current_key_counter = 0
  fruit_keys_array = []

  loop do
    if produce[keys_array[current_key_counter]] == 'Fruit'
      fruit_keys_array.push(keys_array[current_key_counter])
    end
    current_key_counter += 1
    break if current_key_counter >= keys_array.length
  end

  p produce.select {|key, value| fruit_keys_array.include?(key)} 
end



select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
p produce

# Teacher's loop CREATED the hash in the definition by immediately
# new_hash[current_key] = current_value

# avoid's my extra hash.select on the return line
# https://i.imgur.com/I8fAB01.png


# also maybe make some intermediate variable's because that code is WACK