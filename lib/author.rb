class Author

	@@all = []

		attr_accessor :name

	
	def initialize(name = nil)
		@name = name
		@@all << self
	end

	def posts
		return Post.all.select {|e| e.author == self}
	end

	def add_post(post)
		post.author = self
	end

	def add_post_by_title(title)
		new_post = Post.new(title, self)
	end

	def self.post_count
		result = 0
		@@all.each{|e| result += e.posts.length}
		return result
	end


end
