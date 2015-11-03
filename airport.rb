# Countries wish some Airports
class Country
  attr_accessor :name, :airports

  def initialize(name)
    @name = name
    @airports = []
  end

  def add_airport(airport)
    @airports << airport
  end
end

# Airports which stores plnes
class Airport
  attr_accessor :name, :planes

  def initialize(name)
    @name = name
    @planes = []
  end

  def add_plane(plane)
    @planes << plane
  end
end

# Planes with their models
class Plane
  attr_accessor :model

  def initialize(model)
    @model = model
  end
end

airports = []
airports << Airport.new('tolmachevo')
airports << Airport.new('pulkovo')
airports << Airport.new('JFK')

countries = []
countries << Country.new('Russia')
countries << Country.new('USA')
countries[0].add_airport airports[0]
countries[0].add_airport airports[1]
countries[1].add_airport airports[2]

airports[0].add_plane Plane.new 'tu-144'
airports[0].add_plane Plane.new 'boeing-777'
airports[0].add_plane Plane.new 'airbus'
airports[1].add_plane Plane.new 'boeing-707'
airports[1].add_plane Plane.new 'tu-134'
airports[1].add_plane Plane.new 'su-100'
airports[2].add_plane Plane.new 'boeing-777'

countries.each do |country|
  puts "Country #{country.name} has airports:"
  country.airports.each do |airport|
    puts "Airport #{airport.name.capitalize} has planes:"
    airport.planes.each do |plane|
      puts "Plane: #{plane.model}"
    end
  end
end
