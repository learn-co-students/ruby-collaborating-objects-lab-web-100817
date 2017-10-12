class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist)
    if self.all.find {|person| person.name == artist}
      self.all.find {|person| person.name == artist}
    else
      new_artist = Artist.new(artist)
      new_artist.save
      new_artist
    end
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end
end
