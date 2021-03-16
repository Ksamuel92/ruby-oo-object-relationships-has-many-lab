class Song
attr_accessor :name, :artist
@@all = []
    def initialize(name) #initialized with a name argument and automatically pushes object to @@all
        @name = name
        @@all << self
    end
    def self.all #reveals @all class variable (so that other objects can interact with it)
        @@all
    end

    def artist_name #,returns artist name if it exists.
        artist.name if artist
    end

end