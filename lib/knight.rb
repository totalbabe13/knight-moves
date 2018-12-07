

class Chess_board
	attr_reader :board, :test

	def initialize
		@board = [
          ['0','1','2','3','4','5','6','7'],#0
          ['0','1','2','3','4','5','6','7'],#1
          ['0','1','2','3','4','5','6','7'],#2
          ['0','1','2','3','4','5','6','7'],#3
          ['0','1','2','3','4','5','6','7'],#4
          ['0','1','2','3','4','5','6','7'],#5
          ['0','1','2','3','4','5','6','7'],#6
          ['0','1','2','3','4','5','6','7'],#7
		]
	end	
end	

class Knight
	attr_accessor :position, :row, :column, :move_1, :move_2, :move_3, :move_4, :move_5, :move_6, :move_7, :move_8, :all_moves, :path 

 	def initialize
 		@row    = 0
 		@column = 0
 		@path   = [] #array of arrays, path size == (length - 1)
 		@move_1 = nil
 		@move_2 = nil
 		@move_3 = nil
 		@move_4 = nil
 		@move_5 = nil
 		@move_6 = nil
 		@move_7 = nil
 		@move_8 = nil
 		@all_moves = nil

	end

	def position
		return [row,column]
	end	

	def place_knight(coordinates)
	  self.row    = coordinates[0]
	  self.column = coordinates[1]	
	end	

	def knight_moves(start_pos, end_pos)
	  place_knight(start_pos)
	  path << position
      

	  if  self.possible_moves.include?(end_pos)
	    path << end_pos	
	    puts "this the path -> #{path}"
        return path 
	  end	

	  if self.possible_moves.include?(end_pos) == false
	   	self.possible_moves.each do |move|
	   		knight_moves(move,end_pos)
	   		return path if move == end_pos
	     end	
	  end	
	  	
	  

      

	  # place_knight(end_pos)	
	  # path << self.position 
	  # p path
    end

    def possible_moves
    	x = self.position[0] 
    	y = self.position[1]
    	
    	self.move_1 = [x+2, y+1]
    	self.move_2 = [x+1, y+2]
    	self.move_3 = [x-1, y+2]
    	self.move_4 = [x-2, y+1]
    	self.move_5 = [x-2, y-1]
    	self.move_6 = [x-1, y-2]
    	self.move_7 = [x+1, y-2]
    	self.move_8 = [x+2, y-1]
    	self.all_moves = [move_1, move_2, move_3, move_4, move_5, move_6, move_7, move_8]
    	check_possible_moves
        self.all_moves
    end	

    def check_possible_moves
      puts " - - - - - - "
      self.all_moves.map! do |move|
        if move[0] < 0 || move[1] < 0 	
           move = nil
        elsif move[0] > 7 || move[1] > 7
           move = nil	   
        else
          move
        end     		
      end	
      self.all_moves.delete_if {|move| move == nil }
    end	
end		

# knight_moves([0,0],[1,2]) == [[0,0],[1,2]]
# knight_moves([0,0],[3,3]) == [[0,0],[1,2],[3,3]]
# knight_moves([3,3],[0,0]) == [[3,3],[1,2],[0,0]]
