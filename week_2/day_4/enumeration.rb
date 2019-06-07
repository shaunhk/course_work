chickens = ["Marge", "Hetty", "Henrietta", "Audrey", "Mabel"]
#
# chickens.each {|chicken| p chicken}
#
# chickens.each { |chicken| p chicken.upcase}
#
# name_lengths = []
# chickens.each { |chicken| name_lengths << chicken.length() }
#
# p name_lengths
#
# name_lengths = chickens.map { |chicken| chicken.length }
#
# p name_lengths
#
# chickens.each_with_index {|chicken, index| p "#{chicken} is at index #{index}."}
#
# p chickens.find { |chicken| chicken[0] == "H" }
#
# p chickens.find_all { |chicken| chicken[0] == "H" }

p chickens.reduce { |list, chicken| list + ", " + chicken }

numbers = (1..5)

p numbers.reduce {|sum, number| sum + number}
