require_relative('../models/hogwarts.rb')
require_relative('../models/house.rb')

Student.delete_all()
House.delete_all()

house1 = House.new({"name" => "Gryffindor", "logo" => "../gry_logo.jpeg"})
house2 = House.new({"name" => "Hufflepuff", "logo" => "../huf_logo.jpeg"})
house3 = House.new({"name" => "Ravenclaw", "logo" => "../rav_logo.jpeg"})
house4 = House.new({"name" => "Slytherin", "logo" => "../sly_logo.jpeg"})
house1.save()
house2.save()
house3.save()
house4.save()

student1 = Student.new({"first_name" => "Graham", "second_name" => "Cowan", "house_id" => house4.id, "age" => 86})

student2 = Student.new({"first_name" => "Shaun", "second_name" => "Kennedy", "house_id" => house1.id, "age" => 4})

student1.save()
student2.save()
