class Song

  def self.new_by_filename(file)
    song_info = file.split(/[-.]/)
    song = self.new(song_info[1].strip)
    song.artist = Artist.find_or_create_by_name(song_info[0].strip)
    song
  end

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

end
