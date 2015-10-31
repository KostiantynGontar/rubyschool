print 'enter first number '
a = gets.to_f

print 'choose you action (+-*/) '
act = gets.strip

print 'enter last number '
b = gets.to_f

result = a + b if act == '+'
result = a - b if act == '-'
result = a * b if act == '*'

if act == '/' && b != 0
  result = a / b
else
  puts "You can't devide on 0"
  exit
end

puts "result #{result}"
