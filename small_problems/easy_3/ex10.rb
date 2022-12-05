# def palindromic_number?(num)
#   num.digits == num.digits.reverse
# end

def palindrome?(string)
  string == string.reverse
end

def palindromic_number?(num)
  palindrome?(num.to_s)

end








p palindromic_number?(34543) == true
p palindromic_number?(0123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true

