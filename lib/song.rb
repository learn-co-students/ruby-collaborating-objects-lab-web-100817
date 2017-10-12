class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    data = filename.chomp(".mp3").split(" - ")
    new_song = Song.new(data[1])
    binding.pry
    new_song.artist = Artist.find_or_create_by_name(data[0])
    new_song.artist.add_song(new_song)
    new_song
  end

end
