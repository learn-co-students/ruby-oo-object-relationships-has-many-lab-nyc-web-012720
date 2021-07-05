

class Artist

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        song.artist = self #associates the song and artist
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name) #set variable for new instance of song created
        song.artist = self
    end

    def self.song_count
        Song.all.count 
    end 
        


end
