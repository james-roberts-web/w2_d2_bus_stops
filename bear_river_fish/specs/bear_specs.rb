require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../bear')
require_relative ('../river')
require_relative ('../fish')

class TestBear < MiniTest::Test

  def setup()
    @bear1 = Bear.new("Revenant", "Grizzly")
  end

  def test_bear_start_hunger
    assert_equal(0, @bear1.bear_stomach)
  end

  def test_bear_eats
    @bear1.bear_eats_fish(@fish1)
    assert_equal(1, @bear1.bear_stomach)
  end

end
