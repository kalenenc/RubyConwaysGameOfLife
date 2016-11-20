# require "./lib/class"

# grid = Grid.new 
# grid.define_grid #makes the blueprint
# grid.define_coords
# grid.print_grid #prints the grid

grid = Array.new(15)  {Array.new(20){0}}
next_gen = Array.new(15)  {Array.new(20){0}}


grid[0][7] = "*"
grid[1][5] = "*"
grid[0][9] = "*"
grid[10][7] = "*"
grid[7][9] = "*"
grid[14][3] = "*"
grid[12][14] = "*"
grid[2][8] = "*"
grid[14][14] = "*"
grid[10][13] = "*"
grid[14][15] = "*"
grid[0][19] = "*"
grid[11][7] = "*"
grid[7][19] = "*"
grid[14][13] = "*"
grid[12][15] = "*"
grid[13][14] = "*"
grid[12][17] = "*"
grid[8][8] = "*"
grid[7][8] = "*"
grid[6][8] = "*"
grid[8][9] = "*"
grid[1][14] = "*"
grid[7][18] = "*"
grid[10][14] = "*"
grid[3][3] = "*"
grid[4][4] = "*"
grid[1][0] = "*"
grid[4][5] = "*"
grid[2][5] = "*"
grid[2][6] = "*"
grid[2][7] = "*"
grid[2][8] = "*"
grid[3][8] = "*"
grid[3][6] = "*"
grid[7][12] = "*"
grid[3][19] = "*"
grid[4][3] = "*"
grid[6][3] = "*"
grid[9][6] = "*"
grid[0][19] = "*"
grid[5][5] = "*"
grid[5][6] = "*"
grid[5][7] = "*"



 alive_counter = 0

(0..14).each do |y| 
	(0..19).each do |x| 
	   print grid[y][x]
	end
puts
end




while true
	system("cls")
	sleep 1
	(0..14).each do |y| 
		(0..19).each do |x| 
				alive_counter = 0
				#check if it's an edge case
				if x == 0 || y == 0 || y == 14 || x == 19
					#check top left corner
					if x == 0 && y == 0 
						#check right neighbors
						if grid[y][x+1] == "*"
							alive_counter += 1
						end
						#check bottom neighbors
						if grid[y+1][x] == "*"
							alive_counter += 1
						end
						#check bototm right neighbors
						if grid[y+1][x+1] == "*"
							alive_counter += 1
						end
					#check top right corner
					elsif x == 19 && y == 0
						#bottom neighbor
						if grid[y+1][x] == "*"
							alive_counter += 1
						end
						#left neighbor
						if grid[y][x-1] == "*"
							alive_counter += 1
						end
						#bottom left neighbor
						if grid[y+1][x-1] == "*"
							alive_counter += 1
						end
					#check bottom left corner
					elsif x == 0 && y == 14
						#top neighbor
						if grid[y-1][x] == "*"
							alive_counter += 1
						end
						#right neighbor
						if grid[y][x+1] == "*"
							alive_counter += 1
						end
						#top right neighbor
						if grid[y-1][x+1] == "*"
							alive_counter += 1
						end
					
					#check bottom right corner
					elsif x == 19 && y == 14
						#top neighbor
						if grid[y-1][x] == "*"
							alive_counter += 1
						end
						#left neighbor
						if grid[y][x-1] == "*"
							alive_counter += 1
						end
						#top left neighbor
						if grid[y-1][x-1] == "*"
							alive_counter += 1
						end
					#check if it's on top
					elsif y == 0
						#check if bottom neighbor is alive
						if grid[y+1][x+1] == "*"
							alive_counter += 1
						end
						#check if left neighbor is alive
						if grid[y][x-1] == "*"
							alive_counter += 1
						end
						#check if right neighbor
						if grid[y][x+1] == "*"
							alive_counter += 1
						end
						#check if left neighbor
						if grid[y][x-1] == "*"
							alive_counter += 1
						end
						#check if botom right neighbor
						if grid[y+1][x+1] == "*"
							alive_counter += 1
						end
					#check if it's on the left
					elsif x == 0
						#top
						if grid[y-1][x] == "*"
							alive_counter += 1
						end
						#bottom
						if grid[y+1][x] == "*"
							alive_counter += 1
						end
						#right
						if grid[y][x+1] == "*"
							alive_counter += 1
						end
						#top right
						if grid[y-1][x+1] == "*"
							alive_counter += 1
						end
						#bottom right
						if grid[y+1][x+1] == "*"
							alive_counter += 1
						end
					#check if it's on the right
					elsif x == 19
						
						#top
						if grid[y-1][x] == "*"
							alive_counter += 1
						end
						#bottom
						if grid[y+1][x] == "*"
							alive_counter += 1
						end
						#left
						if grid[y][x-1] == "*"
							alive_counter += 1
						end
						#top left
						if grid[y-1][x-1] == "*"
							alive_counter += 1
						end
						#bottom left
						if grid[y+1][x-1] == "*"
							alive_counter += 1
						end
					#check if it's on the bottom
					elsif y == 14
						#top
						if grid[y-1][x] == "*"
							alive_counter += 1
						end
						#left
						if grid[y][x-1] == "*"
							alive_counter += 1
						end
						#right
						if grid[y][x+1] == "*"
							alive_counter += 1
						end
						#top left
						if grid[y-1][x-1] == "*"
							alive_counter += 1
						end
						#top right
						if grid[y-1][x+1] == "*"
							alive_counter += 1
						end
					end
				#if it's not an edge case	
				else
					#top
					if grid[y-1][x] == "*"
						alive_counter += 1
					end
					#bottom
					if grid[y+1][x] == "*"
						alive_counter += 1
					end
					#left
					if grid[y][x-1] == "*"
						alive_counter += 1
					end
					#right
					if grid[y][x+1] == "*"
						alive_counter += 1
					end
					#top right
					if grid[y-1][x+1] == "*"
						alive_counter += 1
					end
					#top left
					if grid[y-1][x-1] == "*"
						alive_counter += 1
					end
					#bottom right
					if grid[y+1][x+1] == "*"
						alive_counter += 1
					end
					#bottom left
					if grid[y+1][x-1] == "*"
						alive_counter += 1
					end
				end
			#if the cell is alive
			if grid[y][x] == "*"
				#if alive counter < 2
				if alive_counter < 2
					next_gen[y][x] = 0
				
				elsif alive_counter == 2 || alive_counter == 3
					next_gen[y][x] = "*"
				
				elsif alive_counter > 3
					next_gen[y][x] = 0
				end
			#if the cell is dead
			elsif grid[y][x] == 0
				if alive_counter == 3 
					next_gen[y][x] = "*"	
				else
					next_gen[y][x] = 0
				end
			end	
		end
	end

puts "new"
(0..14).each do |y| 
  (0..19).each do |x| 
     grid[y][x] = next_gen[y][x]
  end
end
	

(0..14).each do |y| 
	(0..19).each do |x| 
	   print grid[y][x]
	end
puts

end
end
