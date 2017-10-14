require 'pry'
class MP3Importer

  attr_reader :path
  def initialize(path)
    @path = path
  end

  def files
    files = Dir.glob(File.join(@path, "*"))
    files.map do |song|
      song.slice!("./spec/fixtures/mp3s/")
      song
    end
  end

  def import
     files.each do |file|
       song = Song.new_by_filename(file)
       song.artist.add_song(song)
       binding.pry
     end
   end
true
end
