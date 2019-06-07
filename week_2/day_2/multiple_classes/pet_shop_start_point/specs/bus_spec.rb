require('minitest/rg')
require('minitest/autorun')
require_relative('../bus.rb')
# require_relative('../person.rb')

class TestBus < MiniTest::Test

  def setup
    @bus = Bus.new(201, "Buchanan Station")
  end

  def test_drive
    assert_equal("Brum BRUM!", @Bus.drive())
  end

  def test_passenger_check
    assert_equal(nil, @bus.passengers)
  end

end
