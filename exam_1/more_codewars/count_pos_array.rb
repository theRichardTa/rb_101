def count_positives_sum_negatives(lst)
  arr = []
  arr[0], arr[1] = lst.partition { |num| num.positive? }
  answer = [arr[0].size, arr[1].sum]
end

p count_positives_sum_negatives([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15])