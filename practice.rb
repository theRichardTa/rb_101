def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

numbers = [0, 1, 2, 3, 4]

p rolling_buffer2(numbers, 6, 5)

p numbers
