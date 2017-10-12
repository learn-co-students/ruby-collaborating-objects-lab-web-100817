  require 'pry'

class Artist

  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize (name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name (artist_name)
    if_true = self.all.find { |obj| obj.name == artist_name }
    if if_true
      self.all.uniq { |obj| obj.name == artist_name }
    else
      artist = self.new(artist_name)
    end
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end

end
