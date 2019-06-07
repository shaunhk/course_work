require('minitest/autorun')
require('minitest/rg')
require_relative('../hogwarts.rb')
require_relative('../house.rb')

class TestCustomer < MiniTest::Test
  def setup
    @student1 =Student.new({"first_name" => "Graham", "second_name" => "Cowan", "house_id" => 4, "age" => 86})
    @house1 = House.new({'name' => 'Ravenclaw', 'logo' => 'www.fakehogwartsaddress.com'})
  end

  def test_age
    assert_equal(86, @student1.age)
  end

  def test_house_name
    assert_equal("Ravenclaw", @house1.name)
  end

end
