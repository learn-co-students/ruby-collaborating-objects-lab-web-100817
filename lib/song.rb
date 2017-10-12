require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    split = file_name.split(/[-.]/)
    new_song = Song.new(split[1].strip)
    new_song.artist = Artist.find_or_create_by_name(split[0].strip)
    new_song.artist.add_song(new_song)
    new_song
  end

end
