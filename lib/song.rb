require "pry"
class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    #binding.pry

    #binding.pry
    song = filename.split(" - ")[1]
    song = Song.new(song)
    song.artist = Artist.find_or_create_by_name(filename.split(" - ")[0])
    song.artist.add_song(song)
    #binding.pry
    song
  end

end
