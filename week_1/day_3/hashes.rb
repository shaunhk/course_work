mealsArray = ['yogurt', 'roll', 'steak']

first_hash = Hash.new()
second_hash = {}

meals = Hash.new(0)

meals = {"breakfast" => "yogurt", "lunch" => "roll", "dinner" => "steak"}
#
# p meals

silly_thing = {1 => "2", 2 =>"banana", "make" => false}

meals["supper"] = "pancakes"

meals["dinner"] = "pasta"

meals.delete("breakfast")

# p meals
#
# p meals.keys
# p meals.values

meals = {breakfast: "yogurt", lunch: "roll"}
p meals

countries = {
  uk: {
    capital: "London",
    population: 1000
  },
  Germany: {
    capital: "Berlin",
    population: 2000
  }
}

p countries[:uk][:population]
