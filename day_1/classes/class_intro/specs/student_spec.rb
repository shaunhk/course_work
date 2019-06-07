require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../student.rb')

class TestStudent < MiniTest::Test

  def setup
    @student1 = Student.new("Shaun", "G13")
  end

  def test_get_name
    assert_equal("Shaun", @student1.get_name)
  end

end
