require 'pry'
class MP3Importer

  attr_accessor :path, :files


  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.entries("#{path}").drop(2)

  end

  def import
    files.each do |file_name|
      Song.new_by_filename(file_name)
          # binding.pry
    end
  end

end
