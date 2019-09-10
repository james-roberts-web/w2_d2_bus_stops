require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../fish')
require_relative ('../river')
require_relative ('../bear')

class TestFish < MiniTest::Test

  def setup()
    @fish1 = Fish.new("Goldie")
  end



end
