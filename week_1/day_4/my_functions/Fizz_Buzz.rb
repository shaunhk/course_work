def fizzbuzz(n)
  if n.class != Integer
    return "not a number"
  elsif n % 15 == 0
    return "FizzBuzz"
  elsif n % 5 == 0
    return "Buzz"
  elsif n % 3 == 0
    return "Fizz"
  else
    return n
  end
end
