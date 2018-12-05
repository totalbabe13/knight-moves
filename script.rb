#1. Put together a script that creates a game board and a knight.
#2. Treat all possible moves the knight could make as children in a tree. Don’t allow any moves to go off the board.
#3. Decide which search algorithm is best to use for this case. Hint: one of them could be a potentially infinite series.
#4. Use the chosen search algorithm to find the shortest path between the starting square (or node) and the ending square. Output what that full path looks like, e.g.:
 	

require_relative "lib/knight.rb" 

new_board = Chess_board.new
new_knight = Knight.new
new_board.board[0][0]  #=> 'a1'--> row 1 // column a
p new_knight.position