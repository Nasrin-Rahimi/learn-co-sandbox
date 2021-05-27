#require 'pry'

class Song
  
  attr_accessor :name #instance variable
  @@all = [] #class variable
  
  def initialize(name)
    @name = name
  end
  
  def self.all #class method,class reader
    @@all
  end
  
end


class Person
  
  attr_accessor :name , :age, :company
  @@people = []
  
  def initialize(name)
    @name = name
    self.class.all << self
  end
  
  def self.all
    @@people
  end
  
  def self.find_by_name(name)
    (self.all.find{|person| person.name == name}).name
  end
  
  def self.new_from_csv(csv_data)
    rows = csv_data.split("\n")
    people = rows.collect do |row|
      data = row.split(", ")
      name = data[0]
      age = data[1]
      company = data[2]
      person = self.new(name)
      #person.name = name
      person.age = age
      person.company = company
      person
    end
    people
    
  end
  
end

Nasrin_Rahimi = Person.new("Nasrin Rahimi")
Fariborz_Nasr = Person.new("Fariborz Nasr")

puts Person.all
puts Person.find_by_name("Nasrin Rahimi")

csv_data = "Elon Musk, 45, Tesla
Mark Zuckerberg, 32, Facebook
Martha Stewart, 74, MSL"

people = Person.new_from_csv(csv_data)
puts people

new_csv_data = "Avi Flombaum, 31, Flatiron School
Payal Kadakia, 30, ClassPass"

people << Person.new_from_csv(new_from_csv)
people.flatten
puts people