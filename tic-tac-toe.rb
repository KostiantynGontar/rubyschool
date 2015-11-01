@field = {
  a: %w(_ _ _),
  b: %w(_ _ _),
  c: %w(_ _ _)
}

def human_tern
  print 'Сделайте ход '
  human = gets.strip
  @field[human[0].to_sym][human[1].to_i] = 'X'
end

def comp_tern
  puts 'Теперь ход компьютера'
  lines = [:a, :b, :c]
  @field[lines[rand(2)].to_sym][rand(2)] = 'O'
end

def print_board
  puts "   1 2 3\na |#{@field[:a][0]}|#{@field[:a][1]}|#{@field[:a][2]}|\n\
  \rb |#{@field[:b][0]}|#{@field[:b][1]}|#{@field[:b][2]}|\n\
  \rc |#{@field[:c][0]}|#{@field[:c][1]}|#{@field[:c][2]}|"
end

loop do
  human_tern
  print_board
  comp_tern
  print_board
end
