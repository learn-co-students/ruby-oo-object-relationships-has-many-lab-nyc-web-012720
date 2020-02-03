class Song
    attr_accessor :artist, :name, :genre
   
    @@all = []
    # @@songs = []
   
    def initialize(name)
      @name = name
      @@all << self
      
    end

    def self.all
      @@all
    end
    def artist_name
        self.artist.name if self.artist
      end
  end