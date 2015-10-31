@array = [:rock, :scissors, :paper]
@player_score = 0
@computer_score = 0

def player_choice
	print "Enter your tern: "
	@player = gets.strip.to_sym
end

def comp_choice
	print "My tern is: "
	@comp = @array[rand(3)]
	puts "#{@comp}"
end	

def the_game 
	if @player == @comp
		puts "Draw"
	elsif @player == :rock && @comp == :scissors
		puts "Player wins"
	elsif @player == :rock && @comp == :paper
		puts "Computer wins"
	elsif @player == :scissors && @comp == :rock
		puts "Computer wins"
	elsif @player == :scissors && @comp  == :paper
		puts "Player wins"
	elsif @player == :paper && @comp == :rock
		puts "Player wins"
	elsif @player == :paper && @comp == :scissors
		puts "Computer wins"
	end
end

def the_game_case
	case 
  when @player == @comp then puts "Draw"
  when @player == :rock && @comp == :scissors then puts "Player wins"; @player_score += 1
  when @player == :rock && @comp == :paper then puts "Computer wins"; @computer_score += 1
  when @player == :scissors && @comp == :rock then puts "Computer wins"; @computer_score += 1
  when @player == :scissors && @comp  == :paper then puts "Player wins"; @player_score += 1
  when @player == :paper && @comp == :rock then puts "Player wins"; @player_score += 1
  when @player == :paper && @comp == :scissors then puts "Computer wins"; @computer_score += 1
	end
end

loop do
  print "Press any key to continue plaing? (N - for exit) "

  if gets.strip.upcase == "N"
    puts "Hope to see you again"
    exit
  end

  player_choice
  comp_choice
  the_game_case
  puts "Total score (player : computer) : #{@player_score} : #{@computer_score}"
end
