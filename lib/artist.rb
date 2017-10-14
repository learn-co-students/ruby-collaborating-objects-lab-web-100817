class Artist
  attr_accessor :name
  @@all=[]
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs<<song
  end

  def songs
    @songs
  end

  def save
    @@all<<self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.detect do |artist|
      artist.name == name
    end
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || Artist.new(name)
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end
