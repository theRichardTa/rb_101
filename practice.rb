def length_split(s)
  return [""] if s.length == 0
  arr = s.split
  num_lines = (s.length + 4) / 80 + 1
  # If longest word in sentence is greater than terminal width:
  if arr.max_by { |l| l.size }.length + 4 > 80
    # break word
    arr = s.chars
    arr.each_slice(arr.length / num_lines).map { |letter| letter.join("") }
  else
    # break sentence
    arr.each_slice(arr.length / num_lines).map { |line| line.join(" ") }
  end
end

def print_in_box(s)
  lines = length_split(s)
  width = lines.max_by { |l| l.size }.length + 2
  caprow = "+" + "-" * (width) + "+"
  spacerow = "|" + " " * (width) + "|"
  puts caprow, spacerow
  lines.each { |line| puts "|" + line.center(width) + "|" }
  puts spacerow, caprow
end

print_in_box("To boldly go where no one has gone before.")
print_in_box("")
print_in_box(
  "The first 500 digits of pi: 3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679821480865132823066470938446095505822317253594081284811174502841027019385211055596446229489549303819644288109756659334461284756482337867831652712019091456485669234603486104543266482133936072602491412737245870066063155881748815209209628292540917153643678925903600113305305488204665213841469519415116094330572703657595919530921861173819326117931051185480744623799627495673518857527248912279381830119491",
)
print_in_box(
  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
)