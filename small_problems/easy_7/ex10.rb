def penultimate(string)
  string.split[-2]
end

p penultimate('Launch School is great!') == 'is'
p penultimate('last word') == 'last'

# bonus question

def mid_word(string)
  middle_index = (string.split.size / 2.0).round - 1 # redundancy here with .float and .round
  string.split[middle_index]
end

p mid_word("") # empty case nils but it didn't error or give wrong answer

# seems right

# KIDS HERE FOR CHRISTMAS