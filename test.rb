grid = Array.new(15)  {Array.new(20){0}}
next_gen = Array.new(15)  {Array.new(20){0}}

grid[5][5] = "*"
grid[5][6] = "*"
grid[5][7] = "*"

(0..14).each do |y| 
  (0..19).each do |x| 
     next_gen[y][x] = grid[y][x]
  end

end

(0..14).each do |y| 
  (0..19).each do |x| 
     print next_gen[y][x]
  end
puts
end