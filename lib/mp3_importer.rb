require 'pry'
class MP3Importer
    attr_accessor :directory, :path, :file
    @@files=[]
def initialize(path)
@path=path
end 
def files
    @directory=Dir.entries(path)
    @directory.each do |f| 
    @@files << f if f.include?("mp3")
end 
@@files
end 

def import
files.map do |song|
    Song.new_by_filename(song)
end 
end 
end 