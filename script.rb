#1. Put together a script that creates a game board and a knight.

#2. Treat all possible moves the knight could make as children in a tree. 
#   Don’t allow any moves to go off the board.

#3. Decide which search algorithm is best to use for this case. Hint: one of them could be a potentially infinite series.
#4. Use the chosen search algorithm to find the shortest path between the starting square (or node) and the ending square. Output what that full path looks like, e.g.:
 	

require_relative "lib/knight.rb" 

new_board = Chess_board.new
new_knight = Knight.new
 
p new_knight
# knight_moves([0,0],[1,2]) == [[0,0],[1,2]]

 new_knight.knight_moves([7,4],[1,2])

puts''
puts 'is night off board?'
# p new_knight
puts ''
new_knight.possible_moves
p new_knight
