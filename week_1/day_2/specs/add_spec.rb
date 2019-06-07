require ('minitest/autorun')
require ('minitest')
require_relative ('../pop.rb')

class FuncTest < MiniTest::Test
  def test_add
    #arrange
    num_1 = 22
    num_2 = 55
    #nothing
    #act
    result = add(num_1, num_2)
    #assert
    assert_equal(77, result)
  end

  def test_add__negative
    num_1 = -15
    num_2 = 10
    resut = add(num_1, num_2)
    assert_equal(-5, result)
  end
end
