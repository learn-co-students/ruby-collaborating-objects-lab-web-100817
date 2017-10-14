class Artist
  attr_accessor :name, :songs

  @@all = []

   def initialize(name)
     @name = name
     @songs = []
   end

   def self.all
     @@all
   end

   def save
     self.class.all << self
   end

   def self.find_or_create_by_name(name)
     if !self.find_by_name(name)
       self.create(name)
     else self.find_by_name(name)
     end
   end

  def self.find_by_name(name)
    self.all.detect{|artist|artist.name == name}
  end

  def self.create(name)
    new_artist = Artist.new(name)
    new_artist.save
    new_artist
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
  end
end

end
