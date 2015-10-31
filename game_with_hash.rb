money = 100
combo = { 111 => 10, 222 => 20, 333 => 30, 444 => 40, 555 => 50\
          , 666 => 60, 777 => 70, 888 => 80, 999 => 100 }

loop do
  money -= 1
  puts 'Press Enter to start the game'
  gets
  x = rand(100..999)

  if combo.key? x
    money += combo[x]
    puts "You've won #{combo[x]}"
  end

  puts "You've got #{x}"
  puts "You have amount $#{money}"

  if money <= 0
    puts 'Sorry, nice to see you'
    exit
  end
end
