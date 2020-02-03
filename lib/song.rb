class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if self.artist.nil?
      nil
    else
      self.artist.name
    end
  end

end 




# class Song
#   attr_accessor :artist, :name, :genre
#
#   @@all = []
#
#
#   def initialize(name)
#     @name = name
#     # @@count += 1
#     save
#   end
#
#   def save
#     @@all << self
#   end
#
#   def self.all #class method
#     @@all
#   end
# end
