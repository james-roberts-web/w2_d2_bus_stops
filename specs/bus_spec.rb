require ("minitest/autorun")
require ("minitest/rg")

require_relative ("../bus")
require_relative ("../person")
require_relative ("../bus_stop")

class TestBus < MiniTest::Test

  def setup()
    @double_decker1 = Bus.new(22, "Ocean Terminal")
  end

  def test_bus_route()
    assert_equal(22, @double_decker1.route)
  end

  def test_bus_destination()
    assert_equal("Ocean Terminal", @double_decker1.destination)
  end

  def test_passenger_amount()
    number_of_passengers = @double_decker1.number_of_passengers
    assert_equal(0, number_of_passengers)
  end

  def test_new_passenger
    @double_decker1.pick_up(@passenger1)
    assert_equal(1, @double_decker1.number_of_passengers)
  end

  def test_remove_passenger
    @double_decker1.drop_off(@passenger1)
    assert_equal(0, @double_decker1.number_of_passengers)
  end

  def test_empty
    @double_decker1.empty_bus
    assert_equal(0, @double_decker1.number_of_passengers)
  end

  def test_pick_up_all
    #if it picks up, all from queue at stop1 queue will go into bus passengers
    @double_decker1.pick_up_from_stop(@queue)
    assert_equal(1, @double_decker1.passenger.count)

  end

end
