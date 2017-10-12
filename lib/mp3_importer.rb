require "pry"
class MP3Importer
  attr_accessor :path, :songs
  def initialize(path)
    @path = path
    @songs = []


  end


  def files
    dir = Dir.new path
    dir.each do |file|
      #binding.pry
      songs << file unless file[0] == "."
    end
    self.songs
  end

  def import
    dir = Dir.new path
    dir.each do |file|
      #binding.pry
      Song.new_by_filename(file) unless file[0] == "."

    end

  end



end
