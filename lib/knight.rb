

class Chess_board
	attr_reader :board, :test

	def initialize
		@board = [

          ['a1','b1','c1','d1','e1','f1','g1','h1'],#0
          ['a2','b2','c2','d2','e2','f2','g2','h2'],#1
          ['a3','b3','c3','d3','e3','f3','g3','h3'],#2
          ['a4','b4','c4','d4','e4','f4','g4','h4'],#3
          ['a5','b5','c5','d5','e5','f5','g5','h5'],#4
          ['a6','b6','c6','d6','e6','f6','g6','h6'],#5
          ['a7','b7','c7','d7','e7','f7','g7','h7'],#6
          ['a8','b8','c8','d8','e8','f8','g8','h8'] #8
		]
	end	
end	

class Knight
	attr_accessor :position, :row, :column

 	def initialize(row = 0,column = 0)
 		@row = row
 		@column = column
	end

	def position
		return [row,column]
	end	

	def knight_moves(start_pos, end_pos)
		  self.row    = start_pos[0]
		  self.column = start_pos[1]
		  

    end
end		

# knight_moves([0,0],[1,2]) == [[0,0],[1,2]]
# knight_moves([0,0],[3,3]) == [[0,0],[1,2],[3,3]]
# knight_moves([3,3],[0,0]) == [[3,3],[1,2],[0,0]]
