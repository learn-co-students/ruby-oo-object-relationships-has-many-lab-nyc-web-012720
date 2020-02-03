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

    def add_song(song) #associates a song with an artist
        song.artist = self
    end

   def add_song_by_name(song_name)
        song = Song.new(song_name) #creates a new song instance
        song.artist = self #associates the song with an artist
    end

    def self.song_count
        Song.all.count #class method that returns the total number of songs associated to artists
    end
end 