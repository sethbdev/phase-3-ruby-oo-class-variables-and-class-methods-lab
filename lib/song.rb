require "pry"

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist

    end

    def self.count
        @@count
    end

    def self.genres
        #returns an array of all the @@genres of existing songs without duplicates
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        #returns a hash in which the keys are the names of each genre. Each genre name key should point to a value that is the number of songs that have that genre.
        # genre_count = {}
        # @@genres.each do |genre|
        #     if genre_count[genre]
        #         genre_count[genre] += 1
        #     else
        #         genre_count[genre] = 1
        #     end
        # end
        # genre_count

        genre_count = @@genres.tally

    end

    def self.artist_count
        #returns a hash in which the keys are the names of each artist. Each artist name key should point to a value that is the number of songs that have that artist.
        # artist_count = {}
        # @@artists.each do |artist|
        #     if artist_count[artist]
        #         artist_count[artist] += 1
        #     else
        #         artist_count[artist] = 1
        #     end
        # end
        # artist_count

        artist_count = @@artists.tally

    end


end

c1 = Song.new("Lucifer", "Jay-Z", "rap")
c2 = Song.new("99 Problems", "Jay-Z", "rap")
c3 = Song.new("hit me baby one more time", "Brittany Spears", "pop")
c4 = Song.new("alive", "pearl jam", "rock")
c5 = Song.new("ave maria", "luciano pavarotti", "classical")

binding.pry
