class Artist
attr_accessor :name

    @@all = []
    
    def initialize(name)
        @name = name
    end

    def self.all
        @@all
    end
    
    def songs
        Song.all.select do |song| #Song.all references the array in th Song class
           song.artist ==  self #instance of a song
        end 
    end

    def add_song(song)
        song.artist = self
    end

   def add_song_by_name(song_name)
        song = Song.new(song_name) #creates a new song instance
        song.artist = self
    end

    def self.song_count
        Song.all.count #.count returns the number of elements
    end
end 