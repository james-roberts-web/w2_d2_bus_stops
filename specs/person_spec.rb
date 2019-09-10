require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../person')
require_relative ("../bus")
require_relative ("../bus_stop")

class TestPerson < MiniTest::Test

  def setup()
    @passenger1 = Person.new("Barry", 30)
  end

  def test_passenger_name
    assert_equal("Barry", @passenger1.name)
  end

  def test_passenger_age
    assert_equal(30, @passenger1.age)
  end

end
