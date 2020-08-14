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
    # binding.pry
    song = self.new(song_info[1])
    artist_name(song_info[0])
    song 
    binding.pry
    true
  end
  
  def self.all
    @@all
  end
end