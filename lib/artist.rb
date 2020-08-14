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

    self.find(name) || self.create(name)
  end
  
  
  def self.all 
    @@all 
  end
  
end 