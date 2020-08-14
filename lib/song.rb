require "pry"

class Song 
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def artist_name(name)
    self.artist = name 
  end
  
  def self.new_by_filename(file)
    song_info = file.chomp(".mp3").split(" - ")
    @artist = song_info[0]
    @name = song_info[1]
    song = self.new(@name)
    artist_name(song_info[0])
    binding.pry
    true
    song
  end
  
  def self.all
    @@all
  end
end