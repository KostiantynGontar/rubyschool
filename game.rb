print "How old are you? "
age = gets.to_i

print "Do you want to play? (Y/N) "
answer = gets.strip.upcase

money = 100

if answer == "Y" && age >= 18
  puts "Good, let's play"

  loop do
    money -=1
    puts "Press Enter to start the game"
    gets
    
    x = rand(0..9)
    y = rand(0..9)
    z = rand(0..9)

    if x == y && y == z

      if x == 0
        puts "You're tottally gambled"
        money = 0
      else 
        money += 10*x
        puts "You've won #{10*x}"
      end

    end

    puts "You've got #{x} #{y} #{z}"
    puts "You have amount $#{money}"
    
    if money <= 0
      puts "Sorry, nice to see you"
      exit
    end

  end
else
  puts "Welcome again"
  exit
end
