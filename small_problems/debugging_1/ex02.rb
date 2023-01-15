def shout_out_to(name)
  newy = name.chars.each { |c| c.upcase! }
  p newy
  name = newy.join
  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

# i mean sure we could completely replace the code.. but is that true to spirit debugging?

# i fixed the underlying problem even if it's not the best coding solution