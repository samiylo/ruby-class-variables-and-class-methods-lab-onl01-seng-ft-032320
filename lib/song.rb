class Song 
  
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  
  
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count += 1 
    @@genres << @genre 
    @@artists << @artist 
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq 
  end
  
  def self.artists
    @@artists.uniq 
  end
  
  def self.genre_count
    
    self.genre = {}
    @@genres.each do |item|
      
      if item == self.genre[item]
        self.genre[item] += 1 
      
      else
        self.genre[item] = 1 
      end
      
      
    end
  end
  
  
end