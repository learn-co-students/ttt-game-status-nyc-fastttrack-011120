require_relative './lib/game_status.rb'

first_row_win_board = ["X","X","X"," "," "," "," "," "," "] # => [0, 1, 2]

diagonal_win_board_1 = ["X"," "," "," ","X"," "," "," ","X"] # => [0, 4, 8]
diagonal_win_board_2 = [" "," ","X"," ","X"," ","X"," "," "] # => [2, 4, 6]

in_progress_board = ["X"," "," "," "," "," "," "," "," "]

full_board = ["X","X","X","X","X","X","X","X","X"]

# Tests for #winner
winner(first_row_win_board)

# # Tests for #won?
# puts "first row win: " + won?(first_row_win_board).to_s
# puts "diagonal win 1: " + won?(diagonal_win_board_1).to_s
# puts "diagonal win 2: " + won?(diagonal_win_board_2).to_s
#
# # Tests for #draw?
# puts "Is first row win a draw? (Expect false): " + draw?(first_row_win_board).to_s
# puts "Is diagonal win 1 a draw? (Expect false): " + draw?(diagonal_win_board_1).to_s
# puts "Is diagonal win 2 a draw? (Expect false): " + draw?(diagonal_win_board_2).to_s
#
# # Tests for #over?
# puts "Is an in-progress board over? (Expect false): " + over?(in_progress_board).to_s
# puts "Is a first row win board over? (Expect true): " + over?(first_row_win_board).to_s
# puts "Is a full board over? (Expect true): " + over?(full_board).to_s
