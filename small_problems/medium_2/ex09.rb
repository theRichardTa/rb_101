def bubble_sort!(array)
ending = array.length
  loop do
    moved = 0
    a = 0
    b = 1

    loop do
      if (array[a] <=> array[b]) == 1
        array[a], array[b] = array[b], array[a]
        moved += 1
      end

      a += 1
      b += 1
      break if b >= ending
    end
  ending -= 1
    break if moved == 0
  end
  array
end

# got it.. teacher also used 2 loops but a bit more cleanly
# same overarching idea though

# optimization isn't perfect but it's a little bit

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)