print "Press Enter to start the GreanCardLottery game"
gets

print "How many times do you want to try? " 
tries = gets.to_i


your_num = rand(1..50)
puts "Your number is #{your_num}"

1.upto(tries) do |i|
  num = rand(1..50)
  print "Let's try #{i} time. "
  if num == your_num
    puts  "Great! You just won!"
    exit
  else 
    puts "Sorry, the luccky number was #{num}"
  end
end


