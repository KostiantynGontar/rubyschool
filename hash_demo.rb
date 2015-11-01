# class of the notebook
class Book
  attr_reader :last_person

  def initialize
    @hh = {}
  end

  def add_person(options)
    puts 'Person already exists' if @hh.key? options[:name]
    @hh[options[:name].capitalize] = options[:age]
    @last_person = options[:name].capitalize
  end

  def show_all
    @hh.each { |k, v| puts "Name: #{k}, age: #{v}" }
  end
end

a = Book.new
a.add_person name: 'mike', age: 22
a.add_person name: 'jack', age: 24
a.add_person name: 'steeve', age: 38
a.add_person name: 'john', age: 31
a.show_all
puts a.last_person
