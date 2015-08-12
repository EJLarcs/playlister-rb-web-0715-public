require 'pry'
require_relative 'song'

class Artist
  # attr_reader
  attr_accessor :name, :songs, :genres
  @@artists = []

  def initialize
    @songs = []
    @genres = []
    @@artists << self
  end

  def self.all
    @@artists
  end

  def self.reset_artists
    @@artists = []
  end

  def self.count
    @@artists.size
  end

  def add_song(song)
    @songs << song
    @genres << song.genre
    # if song.genre
    #   song.genre.artists << self unless song.genre.artists.include?(self)
    # end

  end

  def genre=(genre)
    @genre = genre
    genre.artists << self
  end

end
