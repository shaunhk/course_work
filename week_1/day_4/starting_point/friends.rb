def get_name(person)
  return person[:name]
end

def get_show(person)
  return person[:favourites][:tv_show]
end

def like_food(person, food)
  if person[:favourites][:snacks].include?(food)
    return true
  else
    return false
  end
end

def add_friend(person, friend)
  person[:friends].push(friend)
end

def delete_friend(person, friend)
  person[:friends].delete(friend)
end

def total_money(persons)
  total = 0
  for people in persons
    total += people[:monies]
  end
  return total
end

def loan_money(lender, loanee, money)
  lender[:monies] -= money
  loanee[:monies] += money
end

def food_tog(friends)
  foods = []
    for friend in friends
      foods += friend[:favourites][:snacks]
    end
  return foods.concat( )*" "
end

def no_friends(array)
  result = []
  for person in array
    result.push(person[:name]) if person[:friends].empty?
  end
  return result
end
