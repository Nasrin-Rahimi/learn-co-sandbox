class Dog
  
  attr_accessor :name, :owner
  
  def initialize(name)
    @name = name
  end
  
  def bark
    puts "Woof!"
  end
  
  def showing_self
    puts self
  end
  
  def get_adopted(owner_name)
    self.owner = owner_name
  end
  
end




fido = Dog.new("Fido")
puts fido.name
fido.bark
fido.get_adopted("sophie")
puts fido.owner
fido.showing_self