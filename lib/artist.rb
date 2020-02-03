
require 'pry'
class Artist
    attr_accessor :name, :songs
#    @@all = []
    def initialize(name)
        @name = name
        @songs = []
    end

    def songs 
        Song.all.select {|song| song.artist == self} 
    end 

    def add_song (song)
        song.artist = self
        # binding.pry
    end 

    def add_song_by_name (song_name)
        son = Song.new(song_name)
        son.artist = self 
    end 

    def self.song_count
        Song.all.count
    end 

    
  end