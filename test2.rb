class Person
  
  def initialize(first_name,last_name)
    @first_name = first_name
    @last_name = last_name
  end
  
  def name=(full_name)
    first_name , last_name = full_name.split
    @first_name = first_name
    @last_name = last_name
  end
  
  def name 
    puts "#{@first_name} #{@last_name}".strip
  end
end

nasrin = Person.new("Nasrin","Rahimi")
nasrin.name

fariborz = Person.new("Fariborz")
fariborz.name


