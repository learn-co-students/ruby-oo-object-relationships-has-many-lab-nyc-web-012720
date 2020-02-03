class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    @songs << song
  end

  def self.song_count
    Song.all.length
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end
end 




# class Artist
#   attr_accessor :name
#
#   def initialize(name)
#     @name = name
#
#   end
#
#   def songs
#     Song.all.select do |song| song.artist == self
#     end
#   end
#
#   def add_song(song)
#     song.artist = self
#   end
#
#   def add_song_by_name(name)
#     song = Song.new(name)
#     song.artist = self
#   end
#
#   def self.song_count
#     Song.all.count
#   end
#
# end
#
#
#
#
#   # def songs
#   #   songs = []
#   #   Song.all.each do |song|
#   #     if song.artist == self
#   #       songs.push(song)
#   #     end
#   #   end
#   #   songs
#   # end
