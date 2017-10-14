class Song
  attr_accessor :name, :artist, :genre
  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    song_hash=create_song_hash(file_name)
    new_song= Song.new(song_hash[:song])
    new_song.artist=Artist.find_or_create_by_name(song_hash[:artist])
    new_song.genre = song_hash[:genre]
    new_song
  end

  def self.create_song_hash(file)
      file = file.split("-")
      {"artist":file[0].strip,"song":file[1].strip,"genre":file[2].strip.partition(".mp3")[0]}
  end
end
