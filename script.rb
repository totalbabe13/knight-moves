#1. Put together a script that creates a game board and a knight.

#2. Treat all possible moves the knight could make as children in a tree. 
#   Don’t allow any moves to go off the board.

#3. Decide which search algorithm is best to use for this case. Hint: one of them could be a potentially infinite series.
#4. Use the chosen search algorithm to find the shortest path between the starting square (or node) and the ending square. Output what that full path looks like, e.g.:
 	

require_relative "lib/knight.rb" 

new_board = Chess_board.new
new_knight = Knight.new
#knight_moves([0,0],[1,2]) == [[0,0],[1,2]]
# new_knight.place_knight([4,4])
puts 'generate new list of possible move from previous list of possible moves'
x = new_knight.possible_moves #[[2, 1], [1, 2]]
puts "original list of possible moves"
p x 
puts "next generation of moves"
x.each do |move| #[2, 1], [1, 2]
 new_knight.place_knight(move)
 p new_knight.possible_moves
end	

p new_knight