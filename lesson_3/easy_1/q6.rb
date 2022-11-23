famous_words = "seven years ago..."

famous_words = "Four score and " + famous_words

p famous_words

famous_words = "seven years ago..."

famous_words.insert(0, "Four score and ")

p famous_words

famous_words = "seven years ago..."

famous_words.prepend("Four score and ")

p famous_words

famous_words = "seven years ago..."

p "Four score and " << famous_words  # this one is bad.. i dont like
