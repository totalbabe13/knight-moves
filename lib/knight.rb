
# CLASS OBJECTS  - - - - - - - - - - - - - -
#  - - - - - - - - - - - - - - - - - - - - -
class Chess_board
	attr_reader :board

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
#  - - - - - - - - - - - - - - - - - - - - -
	def position
		return [row,column]
	end	

#  - - - - - - - - - - - - - - - - - - - - -	
	def place_knight(coordinates)
	  self.row    = coordinates[0]
	  self.column = coordinates[1]	
	end	

#  - - - - - - - - - - - - - - - - - - - - -
	def knight_moves(start_pos, end_pos)
	  place_knight(start_pos)
	  path << position
	  
	  

	  if path[-1] == end_pos
	  	p self
	    return self
	  else
	   puts 'booooo'  

	  end  	

	  # if path.length > 63
	  # 	puts 'test 1'
   #      return nil
	  # end	
      
   #    if self.possible_moves.include?(end_pos)
   #    	puts 'test 2'
   #      path << end_pos
   #      return self
   #    end	

	  # # if start_pos == end_pos
	  # # 	puts 'test 2'
	  # #   path << end_pos	
	  # #   puts "this the path -> #{path}"
   # #      return path 
	  # # end	

	  # if self.possible_moves.include?(end_pos) == false
	  # 	puts 'test 3'
	  #  	self.possible_moves.each do |move|
	  #  		return move if move == end_pos
	  #  		knight_moves(move,end_pos)
	  #    end	
	  # end	
    end

#  - - - - - - - - - - - - - - - - - - - - -    
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
        all_moves
    end	
#  - - - - - - - - - - - - - - - - - - - - -
    def remove_repeated_moves
      path.each do |past_move|
          all_moves.each do |possible_move| 
            all_moves.delete_if {|move| move == past_move}
          end	
      end

    end	
#  - - - - - - - - - - - - - - - - - - - - -
    def check_possible_moves
      
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
      remove_repeated_moves
    end	
end

##  - - - - - - - - - - - - - - - - - - - - -		

# knight_moves([0,0],[1,2]) == [[0,0],[1,2]]
# knight_moves([0,0],[3,3]) == [[0,0],[1,2],[3,3]]
# knight_moves([3,3],[0,0]) == [[3,3],[1,2],[0,0]]
