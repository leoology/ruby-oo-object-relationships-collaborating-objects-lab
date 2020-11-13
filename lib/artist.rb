class Artist
attr_accessor :name, :song
@@all=[]
def initialize(name)
    @name=name
    @@all<<self
end 

def self.all
@@all
end

def add_song(song)
song.artist=self
end

def songs
    Song.all.select {|song| song.artist==self}
end 
def self.find_or_create_by_name(name)
    @@all.find {|a| a.name=name} || Artist.new(name)
end 
def print_songs
    songs.each {|a| puts a.name}
end 

end 