def print_in_box(string)
  string_array = []
  
  string_array << "" if string.empty? # ugly but solves empty string case

  while string.length > 0
    string_array << string.slice!(0..75)
  end

  puts "+-" + sprintf("%.76s", "-" * string_array[0].length) + "-+"
  puts "| " + sprintf("%.76s"," " * string_array[0].length) + " |"

  string_array.each do |string|
    if string_array.size > 1
      puts "| " + sprintf("%-76.76s", string) + " |"
    else
      puts "| " + string + " |"
    end
  end

  puts "| " + sprintf("%.76s"," " * string_array[0].length) + " |"
  puts "+-" + sprintf("%.76s","-" * string_array[0].length) + "-+"
end

# good enough exploration for me.. but this method doesn't center (i didnt try)

# also this method can cut words off.. i didn't even think about that.. would
# have to tweak


print_in_box("Hello, my name is Richa87567832783783785325dddddddddddddddddddddddddddddddd6373873rdffewrewrewrwerewrewffffffffrewwwwwffffffffffffffeffffffffffffregergregergregreeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeergeefffffffffffeddddddfffffffffefffff")


print_in_box("58387387ffffffffffffffffffffffffffffffffffffffffffff3")



print_in_box("")

print_in_box(
  "The first 500 digits of pi: 3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679821480865132823066470938446095505822317253594081284811174502841027019385211055596446229489549303819644288109756659334461284756482337867831652712019091456485669234603486104543266482133936072602491412737245870066063155881748815209209628292540917153643678925903600113305305488204665213841469519415116094330572703657595919530921861173819326117931051185480744623799627495673518857527248912279381830119491",
)
print_in_box(
  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
)

















