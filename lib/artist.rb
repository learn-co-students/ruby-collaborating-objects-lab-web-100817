require 'pry'
class Artist

  attr_accessor :name, :all, :artist
  @@all = []


  def initialize(name)
    @name = name
    @artist = artist
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    new_song = song
    @songs << new_song
  end



  def self.find_or_create_by_name(artist_name)
    if @@all.find{|x| x.name==artist_name}
      @@all.find{|x| x.name==artist_name}
    else
      new_artist = self.new(artist_name)
      new_artist.save
      new_artist
    end

  end

  def print_songs
   @songs.each do |x|
     puts x.name
   end
  end

  def self.all
    @@all
  end

  def save
    new_song = self
    @@all << new_song
  end


end
