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
 winner = []
empty_board = board.all? {|x| x == " "}
WIN_COMBINATIONS.each do |win_comb|
    if empty_board || full?(board)
      return false
    elsif win_comb.all? { |value| board[value] =="X" } || win_comb.all? { |value| board[value] =="O" }
      winner = win_comb
    end
  end
  winner
end

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