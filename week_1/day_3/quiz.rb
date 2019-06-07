my_num = 5
p "What number am I thinking of?"
input = gets.to_i()

while(input != my_num)
  if input > my_num
    print"Nope! Too high..."
  else
    print "Nope! Too low..."
  end
  p "Try again..."
  input = gets.to_i()
end

p "Yes!"
 
