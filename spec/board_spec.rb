require('minitest/autorun')
require('minitest/rg')
require_relative('../board')

class TestBoard < MiniTest::Test

  def setup()
    @board1 = Board.new()
  end

  def test_board_size
    assert_equal(100, @board1.board_size)
  end
end