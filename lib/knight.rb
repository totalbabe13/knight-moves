

class Chess_board
	attr_reader :board, :test

	def initialize
		@board = [
          [1,2,3,4,5,6,7,8],#0
          [1,2,3,4,5,6,7,8],#1
          [1,2,3,4,5,6,7,8],#2
          [1,2,3,4,5,6,7,8],#3
          [1,2,3,4,5,6,7,8],#4
          [1,2,3,4,5,6,7,8],#5
          [1,2,3,4,5,6,7,8],#6
          [1,2,3,4,5,6,7,8] #8
		]
		@test = 'test'
	end	
end	

class Knight

	def initialize
		@position = 