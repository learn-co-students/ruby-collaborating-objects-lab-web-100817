class Artist

  @@all = Array.new

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    if @@all.find{|artist| artist.name == artist_name}
      @@all.find{|artist| artist.name == artist_name}
    else
      artist = self.new(artist_name)
      @@all << artist
      artist
    end
  end

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    songs << song
  end

  def save
    @@all << self
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

end
