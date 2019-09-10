require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../bus_stop')
require_relative ('../person')
require_relative ('../bus')

class TestBusStop < MiniTest::Test

  def setup()
    @stop1 = BusStop.new("StopOne")
  end

  def test_queue_add
    @stop1.add_to_queue(@passenger1)
    assert_equal(1, @stop1.queue.count)
  end

end
