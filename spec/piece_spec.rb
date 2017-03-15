require('minitest/autorun')
require('minitest/rg')
require_relative('../piece')

class TestPiece < MiniTest::Test

  def setup()
    @piece1 = Piece.new("Ben")
  end

  def test_piece_name
    assert_equal("Ben", @piece1.name)
  end

  def test_piece_position
    assert_equal(0, @piece1.position)
  end

  def test_move_position()
    @piece1.move_position(3)
    assert_equal(3, @piece1.position)
  end
end