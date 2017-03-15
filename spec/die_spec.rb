require('minitest/autorun')
require('minitest/rg')
require_relative('../die')

class TestDie < MiniTest::Test

  def setup()
    @die1 = Die.new()
  end

  def test_sides
    assert_equal(6, @die1.sides)
  end
end