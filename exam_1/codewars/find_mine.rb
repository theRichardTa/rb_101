def mineLocation2(field)
  field.each_with_index do |arr, index|
    arr.each_with_index do |ele, index2|
      return [index, index2] if ele == 1
    end
  end
end

def mineLocation(field)
  field.each_with_index do |arr, index|
    return [index, arr.index(1)] if arr.include?(1)
  end
end

# okokok.. we learned and used array.index(SEARCH_TERM)