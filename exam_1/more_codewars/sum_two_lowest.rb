def sum_two_smallest_numbers(numbers)
  numbers.sort.slice(0, 2).sum
end