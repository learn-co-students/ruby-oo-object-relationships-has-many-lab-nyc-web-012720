require 'pry'

class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def add_song(name)
        @songs << name
        name.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
      end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def self.all
        @@all
    end

    def self.song_count
        arr = Song.all.map {|song| song.artist == self}
        arr.length
    end

end