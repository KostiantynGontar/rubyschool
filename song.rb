# Class for albums
class Album
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end
end

# class for songs
class Song
  attr_reader :name, :duration

  def initialize(name, duration)
    @name = name
    @duration = duration
  end
end

album = Album.new 'Known west boy'
song1 = Song.new 'Veronica', 4
song2 = Song.new 'Bury the evidance', 5
album.add_song song1
album.add_song song2

p album
puts album
puts
p album.songs
puts
puts album.songs[0].name
puts album.songs[0].duration
