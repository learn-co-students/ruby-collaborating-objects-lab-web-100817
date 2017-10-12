class MP3Importer
  attr_accessor :path

  def initialize(file_path)
    @path = file_path
    @library = []
  end

  def files
    Dir.entries(self.path).select {|f| !File.directory? f}
  end

  def import
    self.files.each do |file_name|
      new_song = Song.new_by_filename(file_name)
      new_song
    end
  end

end
