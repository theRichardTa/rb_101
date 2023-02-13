def is_int_array(arr)
  return false unless arr.class == Array
  return false if arr.any? { |num| num.class != Integer && num.class != Float }
  return false if arr.any? { |num| num % 1 != 0 }
  true
end

=begin

def is_int_array(arr)
  arr.all? {|e| e % 1.0 == 0} rescue false
end

this is a way to use rescue for errors?

=end