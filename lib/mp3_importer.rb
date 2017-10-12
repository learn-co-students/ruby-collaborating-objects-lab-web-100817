require 'pry'

class MP3Importer
  attr_accessor :path, :file_list, :library
  def initialize(path)
    @path = path  #"../db/mp3s/"
  end

  def files
    @file_list = Dir[@path + "/*"].collect {|name| name.split("/").last}
  end

  def import
    files
    @library = []
    @file_list.each do |file_name|
      @library << Song.new_by_filename(file_name)
    end
  end

end
