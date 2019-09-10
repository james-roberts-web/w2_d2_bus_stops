require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../bear')
require_relative ('../river')
require_relative ('../fish')

class TestBear < MiniTest::Test

  def setup()
    @bear1 = Bear.new("Revenant", "Grizzly")
  end

end
