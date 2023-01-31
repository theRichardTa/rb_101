def title_case(title, minor_words = '')
  title.split.map.with_index do |word, index|
    if index == 0
      word.capitalize
    elsif minor_words.downcase.split.include?(word.downcase)
      word.downcase
    else
      word.capitalize
    end
  end.join(' ')
end

def title_case2(title, minor_words = '')
  title.capitalize.split().map{|a| minor_words.downcase.split().include?(a) ? a : a.capitalize}.join(' ')
end

p title_case2('the QUICK bRoWn fOX', 'xyz fox quick the')