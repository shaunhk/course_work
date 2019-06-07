# num_arr = [1,2,3,4,5]
#
# for x in num_arr
#   p x
#   p "---"
# end
#
# total = 0
#
# for x in num_arr
#   total += x
#   p "Total #{total}"
#   p "---"
# # end
#
# chicken_names = ["Cluck", "Nip", "Henrietta", "Big Ben"]
#
#
# for chick in chicken_names
#   p chick
# end
#
chickens = [
  { name: "Margaret", age: 2, eggs: 0 },
  { name: "Hetty", age: 1, eggs: 2 },
  { name: "Henrietta", age: 3, eggs: 1 },
  { name: "Audrey", age: 2, eggs: 0 },
  { name: "Mabel", age: 5, eggs: 1 },
]

# for chicken in chickens
#   p "#{chicken[:name]} is #{chicken[:age]}"
# end
#
# total_eggs = 0
#
# for chick in chickens
#   total_eggs += chick[:eggs]
# end
#
# p "#{total_eggs} eggs collected."
#
# for chick in chickens
#   chick[:eggs] = 0
# end
#
# p chickens
#
#
# for chick in chickens
#   if chick[:eggs] > 0
#     p "Woo eggs!"
#   end
# end
