class Author

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @posts = []
        @@all << self
    end

    def add_post(title)
        @posts << title
        title.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
    end

    def posts
        Post.all.select {|post| post.author == self}
    end

    def self.all
        @@all
    end

    def self.post_count
        arr = Post.all.map {|post| post.author == self}
        arr.length
    end
    
end