require('minitest/autorun')
require('minitest/rg')
require_relative('../hazard')


class TestHazard < MiniTest::Test

  def setup()
    @snake1 = Hazard.new(12, -5)
    @ladder1 = Hazard.new(4, 6)
  end

  def test_get_snake_start_point
    assert_equal(12, @snake1.start_point)
  end


end