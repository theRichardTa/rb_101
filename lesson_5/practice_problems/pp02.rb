# order array of hashes based on publication year
# earliest to latest


books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]


# new_books = books.map do |book_hash|
#   book_hash.sort_by do |key, value|
#     p book_hash[:published].to_i
#     book_hash[:published].to_i
#   end
# end

# p new_books


# this worked directly below
books.sort! do |a, b|
  a[:published] <=> b[:published]
end

p books

=begin

ok there was a way simpler solution.. take a look

books.sort_by do |book|
  book[:published]
end

=end

# i thought a little too much into it.. this problem wasnt that deep
# started back o nthe right track when i realized
# i just want BOOK[:PUBLISHED] = year.. and sort by that..