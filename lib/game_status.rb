# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  # # Return falsey for an empty board
  # empty_board = board.all? do |space|
  #   space == " " || space == ""
  # end
  #
  # if empty_board
  #   return false
  # end

  # # Return falsey for a draw.  MAYBE UNNECESSARY?
  # draw_board = board.all? do |space|
  #   space == "X" || space == "O"
  # end
  #
  # if draw_board
  #   return false
  # end

  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination
    end

    if position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination
    end
  end

  return false
end

# Returns true if every element in the board contains either an "X" or an "O"
def full?(board)
  board_is_full = board.all? do |space|
    space == "X" || space == "O"
  end
  return board_is_full
end

# BROKEN but should be working according to js_tester.rb
def draw?(board)
  if won?(board) # BROKEN! If #won? returns an array, return false
    false
  elsif !won?(board) && full?(board) # Draw conditions: No win and full board
    true
  else
    false
  end
end

# BROKEN definitely broken
def over?(board)
  if won?(board) || draw?(board) || full?(board)
    true
  else
    false
  end
end

def winner(board)
  win = won?(board)

  # puts win.to_s # DEBUG
  # puts board[win[0]] # DEBUG

  # returns nil if no winner
  if !won?(board)
    return nil
  end

  return board[win[0]]

end
