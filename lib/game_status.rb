# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2], #top row 
  [3,4,5], #mid row 
  [6,7,8], #bot row 
  [0,3,6], #left col 
  [1,4,7], #mid col 
  [2,5,8], #right col
  [0,4,8], #left diag 
  [2,4,6] #right diag 
  ]

def won?(board)
 WIN_COMBINATIONS.detect do |win_combo|
   location1 = win_combo[0]
   location2 = win_combo[1]
   location3 = win_combo[2]
   board[location1] == board[location2] && board[location2] == board[location3] && board[location1] != " "
 end
end
won?(board)

def full?(board)
  !board.any? {|x| x == " "}
end

def draw?(board)
  if !(won?(board)) && full?(board)
    return true
  elsif won?(board)
    return false
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true 
  else 
    return false
  end
end

def winner(board)
  if won?(board)
    
end