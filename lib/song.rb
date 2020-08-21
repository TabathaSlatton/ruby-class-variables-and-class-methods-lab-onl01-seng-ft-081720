require 'pry'
class Song
attr_accessor :name, :artist, :genre

@@count = 0
@@songs = []
@@artists = []
@@genres = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@genres << @genre
        @@artists << @artist
    end

    def self.count
        @@count
    end

    def self.genres
        genres = []
        @@genres.each do |genre|
           genres << genre if !genres.include?(genre)    
        end
        genres
    end

    def self.artists
        artists = []
        @@artists.each do |artist|
           artists << artist if !artists.include?(artist)    
        end
        artists
    end

    def self.genre_count
        genres = {}
        @@genres.each do |genre|

            if !genres[genre]
            genres[genre] = 1
            else genres[genre] += 1
            end
        end
     genres
    end

    def self.artist_count
        artists = {}
        @@artists.each do |artist|
            if !artists[artist]
            artists[artist] = 1
            else artists[artist] += 1
            end
        end
     artists
    end
end