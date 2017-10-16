class MP3Importer
  attr_accessor :path, :files
  def initialize(path)
    @path = path
    @files = []
  end

  def files
    file_names = Dir.entries("#{path}").delete_if{|filename| filename.start_with? '.'}
  end

  def import
    file_names = files
    file_names.each do |file|
      song = Song.new_by_filename(file)
      song.artist.add_song(song)
    end
  end
end
