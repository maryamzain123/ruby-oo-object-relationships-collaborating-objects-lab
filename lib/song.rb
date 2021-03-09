
require 'pry'
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

    def self.new_by_filename(filename)
        name = filename.split(" - ")[1]
        song = self.new(name)
        artist =  filename.split(" - ")[0]
        song.artist_name = (artist)
        song

    end
    
    def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
    end 

end

