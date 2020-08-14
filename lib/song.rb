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
    artist = file.split(" - ")[0]
    name = file.split(" - ")[1]
    song = Song.new(name)
    song.artist_name = artist
    song
  end
  
  def self.all
    @@all
  end
end