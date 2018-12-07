
require_relative "lib/knight.rb" 

new_board = Chess_board.new
new_knight = Knight.new

# placed knight          [0,0]
new_knight.knight_moves([0,0],[3,2])



 

 # if knight position equals destination return path 

 # list of possible moves [1,2] & [2,1]
 #  MOVE the knight and track is path 
