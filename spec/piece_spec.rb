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
end