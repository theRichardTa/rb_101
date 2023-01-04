def balanced?(string)
  array = string.chars.select do |char|
    char == '(' || char == ')'
  end

  a = array[0] == '(' || array.empty?
  b = array[-1] == ')' || array.empty?

  open_count = 0
  close_count = 0
  
  array.each do |char|
    open_count += 1 if char == '('
    close_count += 1 if char == ')'
    return false if close_count > open_count
  end

  a && b == true
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('')

# as expected, teacher's is significantly more elegant
# running counter; flase if it dips below 0.. true if it ends at 0