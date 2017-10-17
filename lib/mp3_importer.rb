require 'pry'

class MP3Importer

  attr_accessor :path, :name
  @@files = []

  def initialize(path)
    @path = path




    #@@files << @file
    #@comp = File.basename @file[0]     # => "xyz.mp4"
    #@extn = File.extname  @file[0]     # => ".mp4"
    #@name = File.basename @file[0], ".mp3"  # => "xyz"

  end

  def files
    file1 = Dir.entries(self.path).select {|f| !File.directory? f}

  end

  def import
    self.files.each do |each_file|
      new_song = Song.new_by_filename(each_file)
      new_song
    end

  end

end
