
class Node
	attr_accessor :x, :y, :parent

	def initialize(x,y, parent = nil)
	@x = x
	@y = y
	@parent = parent
	end 

	def list_moves
		moves = [ [@x+1, @y+2], [@x+2, @y+1], [@x+2, @y-1], [@x+1, @y-2], [@x-1, @y -2], [@x-2, @y-1], [@x-2, @y+1], [@x-1, @y+2] ]
        moves.select { |x| x[0]>=1 && x[0]<=8 && x[1]>=1 && x[1]<=8 }.map do |coordinates|
            Node.new(coordinates[0], coordinates[1], self)
        end
    end    

end	

def knight_moves(start, stop)
  
    start_object = Node.new(start[0], start[1])
    stop_object  = Node.new(stop[0], stop[1])

    # Get path from end location to start location
    find_path = search(stop_object, start_object)
    p find_path
    # Get route of knight
    route = []

    route.unshift([find_path.x, find_path.y])
    current_node = find_path.parent
    until current_node.nil?
        route.unshift([current_node.x, current_node.y])
        current_node = current_node.parent
    end
    
    # Print route to user
    puts "You made it in #{route.size - 1} moves!"
    puts "Your Path: #{route}"
    return route
   
end

def search(target, starting_location)
    
    queue = []
    queue << starting_location #[0,0], target [4,4]

    until queue.empty?
     
        current_node = queue.shift
        if current_node.x == target.x && current_node.y == target.y
            p current_node
            return current_node
        else
            current_node.list_moves.each { |child_move| queue << child_move }
        end
    end
end