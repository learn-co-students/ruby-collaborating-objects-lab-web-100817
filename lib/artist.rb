class Artist
  @@all = []

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if !@@all.map{|artist| artist.name}.include?(name)
      name = Artist.new(name)
    else
      @@all.find {|artist| artist.name = name}
    end
  end


  attr_accessor :name, :songs
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    songs << song
  end

  def save
    @@all << self
  end

  def print_songs
    songs.map{|song| puts song.name}
  end



end
