class Artist
    attr_accessor :name #sets getter and setter for artist_name

    @@all = [] #keeps track of any artist instance that is created
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all #method that reveals the @@all class variable
        @@all
    end

    def add_song(song) #instance method that takes a song as an arguement and adds the artist to the songs @artist variable
        song.artist = self
    end

    def songs #instance method that takes the class Song's @@all variable, and selects any song instance that BELONGS TO an artist
        Song.all.select {|song| song.artist == self}
    end

    def add_song_by_name(song) #instance method that instantiates a new Song object, assigns it the song name (argument) and then automatically associates that new song object with the Artist
        new_song = Song.new(song)
        new_song.artist = self
    end

    def self.song_count #class method that checks the @@all in song and returns the total number of songs
        Song.all.count
    end


end