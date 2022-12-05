# array of digits

def digit_list(num)
  array = num.to_s.chars
  array.map! { |value| value.to_i }
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]   

# teacher showed a brute force way and a direct way which was similar to this

# also some shorthand for method one-liners i ss'd in lesson4 notes

# students found a .digits method which pretty much does it directly