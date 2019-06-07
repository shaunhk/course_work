# require('pry')

def get_bank_name(bank)
  return bank[:name]
end

def total_deposits(bank)
  total = 0
  for account in bank[:accounts]
    for deposit in account[:deposits]
      total += deposit[:amount]
    end
  end

  return total
end
