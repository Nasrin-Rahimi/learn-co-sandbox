#name_array = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

def badge_maker(name)
  "Hello, my name is "+ name + "."
end

def batch_badge_creator(name_array)
  message_array = []
  name_array.each_with_index do |name,index|
    message_array[index] = badge_maker(name)
  end
  message_array
end

def assign_rooms(name_array)
  room_assignment_array = []
  name_array.each_with_index do |name,index|
    room_assignment_array[index] = "Hello, #{name}! You'll be assigned to room #{index+1}!"
  end
  room_assignment_array
end

def printer(name_array)
  message_array = batch_badge_creator(name_array)
  room_assignment_array = assign_rooms(name_array)
  
  message_array.each do |message|
    puts "#{message}"
  end
  
  room_assignment_array.each do |message|
     puts "#{message}"
  end
end

printer(["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"])