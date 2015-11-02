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
