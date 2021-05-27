#require 'pry'

class Song
 
  @@all = []
 
  attr_accessor :name
 
  def initialize(name)
    @name = name
    @@all << self
  end
 
  def self.all
    @@all
  end
  
  def self.print_all_song_names
    @@all.each do |song|
      puts song.name
      #binding.pry
    end
  end
end

ninety_nine_problems = Song.new("99 Problems")
thriller = Song.new("Thriller")
#Song.all
Song.print_all_song_names