class Artist 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  
  def add_song(song)
   @songs << song
  end
  
  def self.find_or_create_by_name(name)
    song_info = file.chomp(".mp3").split(" - ")
    song = Song.new(song_info[1])
    song.artist_name = song_info[0]
    song
  end
  
  
  def self.all 
    @@all 
  end
  
end 