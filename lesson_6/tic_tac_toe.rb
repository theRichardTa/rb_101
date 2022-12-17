require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

CHOICES = [1, 2]

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  # system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i

    if brd[square] == " " # would this be bad? it's what I would do
      break # this could be refactored to break if then have the error prompt.
      # but i dont think it's as readable
    else
      prompt "Sorry, that's not a valid choice."
    end
  end

  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = nil

  WINNING_LINES.each do |line_array|
    marker_array = line_array.map { |spot| brd[spot]}

    if marker_array.include?(INITIAL_MARKER)
      if marker_array.count(COMPUTER_MARKER) == 2
        square = line_array[marker_array.index(INITIAL_MARKER)]
        break
      end
    end
  end

  WINNING_LINES.each do |line_array|
    marker_array = line_array.map { |spot| brd[spot]}

    if marker_array.include?(INITIAL_MARKER) && square == nil
      if marker_array.count(PLAYER_MARKER) == 2
        square = line_array[marker_array.index(INITIAL_MARKER)]
        break
      end
    end
  end

  if square == nil
    square = empty_squares(brd).sample
    square = 5 if brd[5] == INITIAL_MARKER
  end
  
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line_array|
    if line_array.all? { |marker| brd[marker] == PLAYER_MARKER }
      return 'Player'
    elsif line_array.all? { |marker| brd[marker] == COMPUTER_MARKER }
      return 'Computer'
    end
  end
  nil
end

def joinor(array, splitter = ",", word = "or")
  string = ''
  if array.size == 1
    string << "#{array[0]}"
  elsif array.size == 2
    string << "#{array[0]} #{word} #{array[1]}"
  else
    array.each do |element|
      if element != array[-1] # is this correct?
        string << "#{element}" + splitter + " "
      else
        string << word + " " + "#{element}"
      end
    end
  end
  string
end

player_wins = 0
computer_wins = 0
counter = 0

loop do # MAIN GAME LOOP

  board = initialize_board

  if counter.even?
    prompt "Type (1) to go first or (2) for computer to go first."
    answer_first = gets.chomp.to_i
  else
    answer_first = CHOICES.sample
    case answer_first
    when 1 then prompt "Computer has chosen to go second."
      sleep 5
    when 2 then prompt "Computer has chosen to go first."
      sleep 5
    end
  end

  loop do
    system("clear")
    display_board(board)

    if answer_first == 1
      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)

      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)

    elsif answer_first == 2
      computer_places_piece!(board)
      system("clear")
      display_board(board)
      break if someone_won?(board) || board_full?(board)

      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
    end
  end

  system("clear")
  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  
  if detect_winner(board) == 'Player'
    player_wins += 1
  elsif detect_winner(board) == 'Computer'
    computer_wins+= 1
  end

  prompt "You have #{player_wins} wins and computer has #{computer_wins} wins."

  if player_wins == 5
    prompt "You are the grand champion!"
    exit
  elsif computer_wins == 5
    prompt "Computer is the grand champion!"
    exit
  end

  prompt "Would you like to play again?"
  answer = gets.chomp.downcase
  counter += 1

  break if answer == "n"
end

prompt "Thanks for playing!"
