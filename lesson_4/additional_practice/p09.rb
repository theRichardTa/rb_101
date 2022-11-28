words = "the flintstones rock"

p words.split.map! {|value| value.capitalize!}.join(" ")

# literally exactly the same..
# except for my random bangs !
