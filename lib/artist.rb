require 'pry'
class Artist


    attr_accessor :song, :name

    @@all = [ ]

    def initialize(name)
        @name = name
        @@all << self
        @songs = []
    end

    def add_song(song)
        @songs << song
    end

    def self.all
    @@all
    end

    def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  
  def self.create_by_name(name)
    artist = Artist.new(name)
  end

  def self.find_or_create_by_name(name)
    artist_name = @@all.detect{|x| x.name == name}
    if artist_name == nil
      self.create_by_name(name)
    else
      artist_name
    end
    end

    def print_songs
    Song.all.each do |song| 
        if song.artist == self
        puts song.name
        end
    end
  end
    
end