class Post

	@@all = []

	attr_accessor :title, :author
	
	def initialize(title = nil, author=nil)
		@title = title
		@author = author
		@@all << self
	end

	def self.all
		@@all
	end

	def author_name
		self.author ? self.author.name : nil
	end

end
