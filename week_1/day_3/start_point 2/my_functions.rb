def add_array_lengths (fruit1, fruit2)
  return fruit1.length() + fruit2.length()
end

def sum_array(numbers)
  total = numbers.sum()
  return total
end

def find_item(array, item)
  for house in array
    if house == item
      return true
    end
  end
  return false
end

def get_first_key(wallets)
  return wallets.keys()[0]
end
