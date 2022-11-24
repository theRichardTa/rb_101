def rolling_buffer1(buffer, max_buffer_size, new_element)
  test = buffer 
  test << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

numbers = [0, 1, 2, 3, 4]

p rolling_buffer1(numbers, 6, 5)

p numbers

# << is better because it actually mutates the buffer for future use

# = + takes the argument but reassigns it inside the scope of the method and
# never actually mutates the original buffer outside..

# hmm.. teacher prefers method2 because it doesn't output AND mutate
# which is fair..

# I did correctly realize the difference and i suppose method2 works fine if
# it's return value is reassigned in the outside code.. but we cant see that
# sure..
