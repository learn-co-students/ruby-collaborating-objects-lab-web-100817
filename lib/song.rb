require_relative 'artist.rb'

require 'pry'
class Song

  attr_accessor :name, :artist, :mp3importer

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

  def self.new_by_filename(filename)
    song = self.new(filename)
    song.name = filename.split(" - ")[1]
    song.artist_name = filename.split(" - ")[0]
    song.artist.add_song(song)
    song
    # binding.pry
  end
end
