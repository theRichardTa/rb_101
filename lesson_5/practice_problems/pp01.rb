# order by descending value

arr = ['10', '11', '9', '7', '8']

# expected ['11', '10'.. etc]

arr.sort! do |a, b|
  b.to_i <=> a.to_i
end

# just sort_by will default to ascending.. 
# now i COULD call reverse on this.. but lets inverse a vs b instead

p arr

# got it.. teacher didn't use bang !  but w/e