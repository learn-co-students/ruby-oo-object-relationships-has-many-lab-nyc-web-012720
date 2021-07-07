class Artist

	@@all = []

	attr_accessor :name

	def initialize(name = nil)
		@name = name
		@@all << self
	end

	def songs
		return Song.all.select {|e| e.artist == self}
	end

	def add_song(song)
		song.artist = self
	end

	def add_song_by_name(title)
	new_song = Song.new(title, self)
	end

	def self.song_count
		result = 0
		@@all.each{|e| result += e.songs.length}
		return result
	end



end