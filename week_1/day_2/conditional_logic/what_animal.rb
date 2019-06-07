p "what animal is my favourite?"
input = gets.chomp.downcase

if  (input == "dog")
  p "This is my favourite animal."
elsif (input == "cat")
  p "Cats are okay."
else
  p "This isn't my favourite animal."
end
