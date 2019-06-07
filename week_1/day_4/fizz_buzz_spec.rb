require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( 'my_functions/Fizz_Buzz.rb')

class Fizz_Buzz_Test < MiniTest::Test

def test_fizzbuss_3
  actual_value = fizzbuzz(3)
  assert_equal('Fizz', actual_value)
end

def test_fizzbuzz_5
  actual_value = fizzbuzz(5)
  assert_equal('Buzz', actual_value)
end

def test_fizzbuzz_15
  actual_value = fizzbuzz(15)
  assert_equal('FizzBuzz', actual_value)
end

def test_fizzbuzz_8
  actual_value = fizzbuzz(8)
  assert_equal(8, actual_value)
end

def test_fizzbuzz_string
  actual_value = fizzbuzz("number")
  assert_equal("not a number", actual_value)
end

end
