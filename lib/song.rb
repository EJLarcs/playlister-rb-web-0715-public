class Song

  attr_reader :genre
  attr_accessor :name, :artist, :song, :songs

  @@songs = []

  def initialize(name=nil)
  @name = name
  @@songs << self
end

  def name=(name)
    @name = name
  end

  def songs=(song)
    storing_the_song = []
  end

  def genre=(genre)
     @genre = genre
     genre.songs = [] unless genre.songs
     genre.songs << self
   end

end
