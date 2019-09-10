require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../river')
require_relative ('../fish')
require_relative ('../bear')

class TestRiver < MiniTest::Test

  def setup()
    @river1 = River.new("Colorado", 1000)
  end


end
