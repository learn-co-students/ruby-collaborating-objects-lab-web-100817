class Song

  attr_accessor :name, :artist
  @@all = []

   def initialize(name)
     @name = name
     @@all << name
   end

   def self.new_by_filename(file)
     split = file.split("-")
     song = self.new(split[1].strip)
     song.artist = Artist.find_or_create_by_name(split[0].strip)
     song.artist.add_song(song)
     song
   end


end
