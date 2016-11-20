class Grid	
	def initialize
		@grid = Array.new(15)  {Array.new(20){0}}
		@next_gen = Array.new(15)  {Array.new(20){0}}
	end

	def define_grid
		@grid[0][7] = "*"
		@grid[1][5] = "*"
		@grid[0][9] = "*"
		@grid[10][7] = "*"
		@@grid[7][9] = "*"
		@grid[14][3] = "*"
		@grid[12][14] = "*"
		@grid[2][8] = "*"
		@grid[14][14] = "*"
		@grid[10][13] = "*"
		@grid[14][15] = "*"
		@grid[0][19] = "*"
		@grid[11][7] = "*"
		@grid[7][19] = "*"
		@grid[14][13] = "*"
		@grid[12][15] = "*"
		@grid[13][14] = "*"
		@grid[12][17] = "*"
		@grid[8][8] = "*"
		@grid[7][8] = "*"
		@grid[6][8] = "*"
		@grid[8][9] = "*"
		@grid[1][14] = "*"
		@grid[7][18] = "*"
		@grid[10][14] = "*"
		@grid[3][3] = "*"
		@grid[4][4] = "*"
		@grid[1][0] = "*"
		@grid[4][5] = "*"
		@grid[2][5] = "*"
		@grid[2][6] = "*"
		@grid[2][7] = "*"
		@grid[2][8] = "*"
		@grid[3][8] = "*"
		@grid[3][6] = "*"
		@grid[7][12] = "*"
		@grid[3][19] = "*"
		@grid[4][3] = "*"
		@grid[6][3] = "*"
		@grid[9][6] = "*"
		@grid[0][19] = "*"
		@grid[5][5] = "*"
		@grid[5][6] = "*"
		@grid[5][7] = "*"
	end

	def print_grid 
		(0..14).each do |y| 
			(0..19).each do |x| 
	  		 print @grid[y][x]
			end
		puts
		end
		return @grid
	end



end