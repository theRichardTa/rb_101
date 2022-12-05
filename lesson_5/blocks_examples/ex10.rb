hello = [[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |el|
    if el.to_s.to_i == el   # it's an integer
      el + 1
    else                    # it's an array
      el.map do |n|
        n + 2
      end
    end
  end
end

p hello


# outer array with 2 inners
#   [[1, 2], [3, 4]]  ,  [5, 6]

# first inner has 2 elements, second has 1

#  [1, 2], [3, 4]     ,     5 ,  6

# only first portion has another layer.. with 2 integers each

# 1 , 2   3 , 4          nil ,  nil

=begin

calling .map on the outer.. so new array returned

calling map on the first two inners.. so two new returned arrays

-- since the second arrays elements ARE integers.. they get +1 at this level

-- since the first arrays elements are arrays.. they get mapped again

--- each of this new layers elements get +1..

mapped and returned all the way up..

=end