class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    artist_names = []
    @@all.each {|artist| artist_names << artist.name}
    if artist_names.include?(name)
      @@all.find {|artist| name = name}
    else Artist.new(name)
    end
  end

  def add_song(song)
    self.songs << song
  end
  
  def print_songs
    self.songs.each {|song| puts song.name}
  end
 
end
