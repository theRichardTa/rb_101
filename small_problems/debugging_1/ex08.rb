password = nil

def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
end

def verify_password(password)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  password = set_password
end

verify_password(password)

# methods have no access to pw.. it was never passed in.. its always nil

# already encounter but must remember.. the method/def does not reassign variable
# it gives a new return value that you use to reassign variable from within the code..
