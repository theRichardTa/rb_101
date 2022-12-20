def staggered_case(string)
  chars = string.downcase.chars.map.with_index do |char, index|
    if index.even?
      char.upcase
    else
      char
    end
  end
  chars.join
end

p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'


def staggered_case2(string, need_upper = true)
  result = ''
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

p staggered_case2('ALL_CAPS') == 'AlL_CaPs'
p staggered_case2('ignore 77 the 444 numbers', false) #== 'IgNoRe 77 ThE 444 NuMbErS'
p staggered_case2('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'

# had to remove the reassignment line of code