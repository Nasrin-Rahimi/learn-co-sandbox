#require 'pry'

class School

  attr_reader :roster  

  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name,grade)
    if !(@roster.key?(grade))
      @roster[grade] = []
    end
    @roster[grade] << name
  end
  
  
end

#binding.pry
school = School.new("Bayside High School")
school.add_student("Nasrin Rahimi",7)

