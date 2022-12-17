def computer_places_piece!(brd)
  square = nil

  WINNING_LINES.each do |line_array|
    marker_array = line_array.map { |spot| brd[spot]}

    if marker_array.include?(INITIAL_MARKER)
      if marker_array[0] == PLAYER_MARKER && marker_array[1] == PLAYER_MARKER
        binding.pry
        square = line_array[2]
      elsif marker_array[1] == PLAYER_MARKER && marker_array[2] == PLAYER_MARKER
        binding.pry
        square = line_array[0]
      end
    end
  end
  square = empty_squares(brd).sample if square == nil
  brd[square] = COMPUTER_MARKER
end


def computer_places_piece!(brd)
  square = nil

  WINNINGS_LINES.each do |line_array|
    marker_array = line_array.map { |spot| brd[spot]}

    if marker_array.include?(INITIAL_MARKER)
      if marker_array.count(PLAYER_MARKER) == 2
        square = line_array[marker_array.index(INITIAL_MARKER)]
      end
    end
  end
  square = empty_squares(brd).sample if square == nil
  brd[square] = COMPUTER_MARKER
end
