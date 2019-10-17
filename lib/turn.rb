def display_board (board)
puts" #{board[0]} | #{board[1]} | #{board[2]} "
 puts"-----------"
 puts" #{board[3]} | #{board[4]} | #{board[5]} "
puts"-----------"
 puts" #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
   if (index.between?(0, 8)) && (position_taken?(board, index) == false)
 return true
else
  return false
end
end

def position_taken? (board, index)
if (board[index] ==  " " || board[index] == "" || board[index] == nil)
  return false
elsif board[index] ==  "X"||"O"
  return true
end
end

def input_to_index(index)
  index.to_i - 1
end

def move(board,index,current_player="X")
  board[index]=current_player
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  input_to_index(index)
  if valid_move?(board, index) == true
    move(board,index,current_player="X")
end
