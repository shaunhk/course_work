chickens = [
  { name: "Margaret", age: 2, eggs: 0 },
  { name: "Hetty", age: 1, eggs: 2 },
  { name: "Henrietta", age: 3, eggs: 1 },
  { name: "Audrey", age: 2, eggs: 0 },
  { name: "Mabel", age: 5, eggs: 1 },
]

# def count_eggs(array)
#   total_eggs = 0
#   for bird in array
#     total_eggs += bird[:eggs]
#     bird[:eggs] = 0
#   end
#   return "#{total_eggs} eggs collected."
# end
#
# p count_eggs(chickens)

# for chicken in chickens
#   if chicken[:name] == "Audrey"
#     p "I found Audrey"
#   end
# end
#
def find_chick_by_name(array, nam)
  for chick in array
    if chick[:name] == nam
      return chick
    end
  end
  return "Not found"
end
p find_chick_by_name(chickens, "Elise")
