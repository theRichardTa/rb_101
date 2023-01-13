def merge(arr1, arr2)
  new_array = []
  counter1 = 0
  counter2 = 0

  until counter1 > arr1.size - 1 && counter2 > arr2.size - 1
    if counter1 > arr1.size - 1
      new_array << arr2[counter2]
      counter2 += 1
    elsif counter2 > arr2.size - 1
      new_array << arr1[counter1]
      counter1 += 1
    else
      case arr1[counter1] <=> arr2[counter2]
      when -1
        new_array << arr1[counter1]
        counter1 += 1
      when 1
        new_array << arr2[counter2]
        counter2 += 1
      else
        new_array << arr1[counter1]
        counter1 += 1
        new_array << arr2[counter2]
        counter2 += 1
      end
    end
  end
  new_array
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]