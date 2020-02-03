class Author
attr_accessor :name

    def initialize(name)
        @name = name
    end

    def posts
        #this goes over the array of posts and returns an array of posts for each author
        Post.all.select do |post| 
            post.author == self
        end
    end

    def add_post(post)
        #associates a post with its author
        post.author = self
    end

    def add_post_by_title(post_title)
        post = Post.new(post_title)
        post.author = self
    end

    def self.post_count
        Post.all.count
    end
end