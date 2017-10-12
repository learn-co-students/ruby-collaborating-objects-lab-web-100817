  require 'pry'
class MP3Importer

  attr_accessor :path

  def initialize (test_music_path)
    @path = test_music_path
  end

  def files
    Dir.entries(self.path).select {|file| file.include?('mp3')}
  end

  def import
    files.each do |url|
      data = url.chomp(".mp3").split(" - ")
      if Artist.all.find{ |x| x.name == data[0] }
        Artist.all.find{ |x| x.name == data[0] }.songs << data[1]
      else
        artist = Artist.new(data[0])
        artist.songs << data[1]
        Artist.all << artist
      end
    end
  end

end
