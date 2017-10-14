require_relative 'song.rb'
require 'pry'
class Artist

  @@all = []

  attr_accessor :name, :song, :path, :mp3importer

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

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(name)
    if self.all.detect {|artist| artist.name == name}
      self.all.detect {|artist| artist.name == name}
    else
      artist = Artist.new(name)
    end
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

end
