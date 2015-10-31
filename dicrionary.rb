@dict = {}

def find_word(input)
  
  if @dict.key? input
    print "Вариантов перевода: "
    puts "#{@dict[input].size}"
    puts @dict[input]
  elsif input.empty?
    count_words  
  else
    add_word(input) 
  end
end

def add_word(input)
  print "Слово не нейдено! Добавьте варианты перевода: "
  output = gets.strip.split(", ")
  @dict[input] = output
  print "Слово успешно добавлено"
  puts @dict
end

def count_words
  x = 0
  @dict.each_value { |v| x += v.size }
  puts "Количество переводов: #{x}"
  exit
end

loop do
  print "Введите слово для поиска (Введите enter для выхода): "
  input = gets.chomp.to_sym
  find_word(input)
end
