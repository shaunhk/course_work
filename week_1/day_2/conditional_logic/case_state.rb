p "What is the score?"
score = gets.chomp.to_i()

result = case score
when 10
  "Genius"
when 8..9
 "merit"
when 5..7
  "pass"
when 4
  "resit"
else
  "fail"
end

p result
