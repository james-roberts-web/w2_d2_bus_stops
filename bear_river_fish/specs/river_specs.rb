require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../river')
require_relative ('../fish')
require_relative ('../bear')

class TestRiver < MiniTest::Test

  def setup()
    @river1 = River.new("Colorado", 1000)
  end

  def test_amount_of_fish
    assert_equal(1000, @river1.amount_of_fish)
  end

  # def test_bear_eats
  #   bear_takes_fish
  #   assert_equal(999, @river.amount_of_fish -= fish)
  # end
end
