require('minitest/rg')
require('minitest/autorun')
require_relative('../bus.rb')
require_relative('../person.rb')

class TestBus < MiniTest::Test

  def setup
    @bus = Bus.new(201, "Buchanan Station")
    @person1 = Person.new("John", 38)
    @person1 = Person.new("Sam", 22)
  end

  def test_drive
    assert_equal("Brum BRUM!", @bus.drive())
  end

  def test_passenger_add
    @bus.add_passenger(@person1)
    assert_equal(1, @bus.count_passengers)
  end

  def test_passenger_drop_off
    @bus.add_passenger(@person1)
    @bus.remove_passenger(@person1)
    assert_equal(0, @bus.count_passengers)
  end

  def test_empty
    @bus.add_passenger(@person1)
    @bus.add_passenger(@person2)
    assert_equal(2, @bus.count_passengers)
    @bus.empty
    assert_equal(0, @bus.count_passengers)
  end

end
