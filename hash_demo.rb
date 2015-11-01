@hh = {}

def add_person(options)
  return puts 'Person already exists' if @hh.key? options[:name]
  @hh[options[:name]] = options[:age]
end

def show_hash
  @hh.each { |k, v| puts "Name: #{k}, age: #{v}" }
end

loop do
  print 'Enter a name: '
  name = gets.chomp.capitalize

  if name.empty?
    show_hash
    exit
  end

  print 'Enter an age: '
  age = gets.chomp.to_i

  add_person name: name, age: age
end
