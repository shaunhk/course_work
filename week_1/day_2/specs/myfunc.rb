require('minitest/autorun')
require('minitest/rg')
require_relative('../my_func.rb')

class FuncTest < MiniTest::Test
  def test_greet
    #arrange
    #nothing to do another_greet

    #act
    result = greet('louise', 'morning')

    #assert
    assert_equal('A good morning, to you, Louise.', result)
  end
end
