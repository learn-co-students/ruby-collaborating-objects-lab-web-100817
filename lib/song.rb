require 'pry'
class Song < Artist

  attr_accessor :name, :artist
  attr_reader :artist_name

  def initialize(name)
    @name = name
    @artist = artist
  end



  def artist_name=(name)
      if (self.artist.nil?)
        self.artist = Artist.new(name)
      else
        self.artist.name = name
      end
    end

    def self.new_by_filename(file)
      song_name = file.split("-")[1].strip
      artist_name = file.split("-")[0].strip
      new_song = Song.new(song_name)
      new_song.artist = Artist.find_or_create_by_name(artist_name)
      new_song.name = song_name
      new_song.artist.add_song(new_song)
      new_song
    end

end
