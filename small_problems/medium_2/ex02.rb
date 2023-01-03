require 'pry'

BLOCKS = {
  'b' => 'bo',
  'o' => 'bo',
  'g' => 'gt',
  't' => 'gt',
  'v' => 'vi',
  'i' => 'vi',
  'x' => 'xk',
  'k' => 'xk',
  'r' => 're',
  'e' => 're',
  'l' => 'ly',
  'y' => 'ly',
  'd' => 'dq',
  'q' => 'dq',
  'f' => 'fs',
  's' => 'fs',
  'z' => 'zm',
  'm' => 'zm',
  'c' => 'cp',
  'p' => 'cp',
  'j' => 'jw',
  'w' => 'jw',
  'n' => 'na',
  'a' => 'na',
  'h' => 'hu',
  'u' => 'hu'
}

def block_word?(string)
  used_letters = []
  string.chars.each do |letter|
    used_letters << BLOCKS[letter.downcase]
  end
  p used_letters
  used_letters == used_letters.uniq
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

p block_word?('steam')