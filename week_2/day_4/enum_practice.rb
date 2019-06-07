pets = [
{
    name: "Sir Percy",
    pet_type: :cat,
    breed: "British Shorthair",
    price: 500
},
{
    name: "King Bagdemagus",
    pet_type: :cat,
    breed: "British Shorthair",
    price: 500
},
{
    name: "Sir Lancelot",
    pet_type: :dog,
    breed: "Pomsky",
    price: 1000,
},
{
    name: "Arthur",
    pet_type: :dog,
    breed: "Husky",
    price: 900,
},
{
    name: "Tristan",
    pet_type: :dog,
    breed: "Basset Hound",
    price: 800,
},
{
    name: "Merlin",
    pet_type: :cat,
    breed: "Egyptian Mau",
    price: 1500,
}
]

# for pet in pets
#   p pet[:name]
# end
#
# pets.each {|pet| p pet[:name]}

# for pet in pets
#   p pet[:name] if pet[:name] == "Tristan"
# end
#
# found_pet =  pets.find {|pet| pet[:name] == "Tristan"}
# p found_pet[:name

  ## Task: using enumerable methods:
  ## 1. Find the pet which breed is Husky
  p pets.find {|pet| pet[:breed] == "Husky"}
  ## 2. Make an array of all of the pets' names
  p pets.map {|pet| pet[:name]}
  ## 3. Find out if there are any pets of breed 'Dalmation' (true or false)
  p pets.any? {|pet| pet[:breed] == "Dalmation"}
  ## 4. Find the most expensive pet i.e. pet with the highest/maximum price
  p pets.max_by {|a| a[:price]}
  ## 5. Find the total value (price) of all of the pets added together.
  p pets.sum {|pet| pet[:price]}
  p pets.reduce(0) {|total, pet| total + pet[:price]}
  ## 6. Change each pet so their price is 50% cheaper]
  pets.each {|pet| pet[:price] *= 0.5}
  p pets
