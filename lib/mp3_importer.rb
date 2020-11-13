require 'pry'
class MP3Importer
    attr_accessor :directory, :path, :file
    @@files=[]
def initialize(path)
@path=path
@directory=Dir.entries(path)
    @directory.each do |f| 
    @@files << f if f.include?("mp3") && !files.include?(f)
    end
end 
def files
 return @@files
end 

def import
files.each do |song|
    Song.new_by_file_name(song)
end 
end 
end 