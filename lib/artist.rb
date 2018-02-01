class Artist
  attr_accessor :name, :songs

  def initialize (name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def song_count
    @@song_count
  end

  def add_song_by_name(song_name)
    song_name = Song.new(song_name)
    @songs << song_name
    song_name.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end
  @@song_count ||= 0



end
