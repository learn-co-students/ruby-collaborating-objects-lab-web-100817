require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
  # "Michael Jackson - Black or White - pop.mp3"
    parsed_file = file.split(" - ")
    artist_name = parsed_file[0]
    song_name = parsed_file[1]
    song = self.new(song_name)
    song.artist=Artist.find_or_create_by_name(artist_name)
    song
  end
true
end
