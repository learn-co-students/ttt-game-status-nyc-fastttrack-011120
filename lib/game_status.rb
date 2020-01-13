# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0, 1, 2],[3, 4, 5],[6, 7, 8],[0, 3, 6],[1, 4, 7],[2, 5, 8],[0, 4, 8],[6, 4, 2]]

def won?(board)
  WIN_COMBINATIONS.each do |win_Position|
    puts win_Position.inspect
    if board[win_Position[0]] == "X" &&  board[win_Position[1]] == "X" &&  board[win_Position[2]] == "X"
      return win_Position
    elsif board[win_Position[0]] == "O" &&  board[win_Position[1]] == "O" &&  board[win_Position[2]] == "O"
      return win_Position
    end
  end
  return nil
end


def full?(board)
  counter = 0
  board.each do |possible_Token|
    if possible_Token == "O" || possible_Token == "X"
      counter+=1
    end
  end
  if counter == 9
    return true
  else
    return false
  end
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  if won?(board) != nil || draw?(board) == true || full?(board) == true
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board) != nil
    return board[won?(board)[0]]
  else
    return nil
  end
end