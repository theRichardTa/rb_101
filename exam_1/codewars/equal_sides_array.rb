require 'pry'

def find_even_index(arr)
  answer = 0
  limbo = []
  new_arr = []
  loop do
    return -1 if arr.empty?
    limbo << arr.shift
    new_arr << limbo.shift if limbo.size > 1
    break if new_arr.sum == arr.sum
    answer += 1
  end
  answer
end

p find_even_index([1,2,3,4,3,2,1])

p find_even_index([20,10,30,10,10,15,35])

p find_even_index([20,10,-80,10,10,15,35])

p find_even_index([0,0,0,0,0])


# rethink and maybe redo this
# tired and hacked it to death