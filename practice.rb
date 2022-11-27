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
    break if current_key_counter == keys_array.length
  end
  p produce.select {|key, value| fruit_keys_array.include?(key)} 
end








select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

