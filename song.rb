# Class for artist
class Artist
  attr_reader :name, :albums

  def initialize(name)
    @name = name
    @albums = []
  end

  def add_album(album)
    @albums << album
  end
end

# Class for albums
class Album
  attr_reader :name, :songs

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

artist = Artist.new 'Tricky'
album1 = Album.new 'Known west boy'
artist.add_album album1
song1 = Song.new 'Veronica', 4
song2 = Song.new 'Bury the evidance', 5
album1.add_song song1
album1.add_song song2

puts artist.name
puts
puts artist.albums[0].name
puts album1.name
puts
puts album1.songs[0].name
puts album1.songs[0].duration
