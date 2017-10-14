class MP3Importer
  attr_accessor :path, :files
  # attr_reader :import
  def initialize(path)
    @path = path
    @files = normalize(files= Dir["#{path}/*.mp3"])
    #  binding.pry
  end

  def normalize(files)
    files.map do |file|
       file.rpartition("#{path}\/").last
    end
  end


  def import
    files.each do |file|
      new_song=Song.new_by_filename(file)
      new_artist = Artist.find_or_create_by_name(new_song.artist.name)
      new_artist.add_song(new_song.name)
    end
  end

end
