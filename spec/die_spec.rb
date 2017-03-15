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

  def test_roll
    between_1_to_6 = (1 .. 6).include?(@die1.roll())
    assert_equal(true, between_1_to_6)
  end
end