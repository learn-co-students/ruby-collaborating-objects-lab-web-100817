require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    name_list = file_name.split(" - ")
    new_song = Song.new(name_list[1])
    new_song.artist  = Artist.find_or_create_by_name(name_list[0])
    new_song.artist.add_song(new_song)
    new_song
  end
end
