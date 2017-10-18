require 'pry'


class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path

  end

  def files
    files = []
    dir = Dir.new path
    dir.select {|file| files << file if file[0] != "." }
      files

  end

  def import
    self.files.each do |filename|
      song = filename.split(" - ")[1]
      artist = filename.split(" - ")[0]
      artist = Artist.find_or_create_by_name(artist)
        artist.songs << song
    end
  end


end
