    class Song
        attr_accessor :name, :artist
        @@all=[]
    def initialize(name)
        @name=name
        @@all<<self
    end 
    def self.all
        @@all
    end

    def self.new_by_file_name(file_name)
       song_name= file_name.split(" - ")[1]  
       new_song=Song.new(song_name)
       return new_song
    end

    def artsit_name=(artsit_name)
            @@all.find {|song| song.artist_name=self} || Artist.new(name)
    end 

end 