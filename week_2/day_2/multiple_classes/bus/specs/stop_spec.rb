require('minitest/rg')
require('minitest/autorun')
require_relative('../stop.rb')
require_relative('../person.rb')

class BusStopTest < MiniTest::Test

  def setup
    @Stop = BusStop.new("Maryhill")
    @person_1 = Person.new("John", 28)
  end

  def test_add_person
    @Stop.add_person(@person_1)
    assert_equal(1, @queue.count_people)
  end

end
