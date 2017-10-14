require 'pry'
class MP3Importer
  attr_accessor :path, :artist, :song

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).select {|f| !File.directory? f}
  end

  def import
    files.each do |file|
      new_song = Song.new_by_filename(file)
      new_song.artist.save 
    end
  end

end
