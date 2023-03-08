EYES = [':', ';']
NOSE = ['-', '~']
MOUTH = [')', 'D']

def count_smileys(arr)
  arr.map do |string|
    if string.size == 2 &&
       EYES.include?(string[0]) && MOUTH.include?(string[1])
      1
    elsif string.size == 3 && EYES.include?(string[0]) &&
          NOSE.include?(string[1]) && MOUTH.include?(string[2])
      1
    else
      0
    end
  end.sum
end

p count_smileys([":)", ":(", ":D", ":O", ":;"])
