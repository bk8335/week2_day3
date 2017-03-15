require('minitest/autorun')
require('minitest/rg')
require_relative('../board')
require_relative('../piece')

class TestBoard < MiniTest::Test

  def setup()
    @piece1 = Piece.new("Ben")
    @piece2 = Piece.new("Andrew")
    @piece3 = Piece.new("Sandy")

    pieces = [@piece1, @piece2, @piece3]

    @board1 = Board.new(pieces)
  end

  def test_board_size
    assert_equal(100, @board1.board_size)
  end

  def test_piece_position
    assert_equal(0, @piece1.position)
    assert_equal(0, @board1.position("Ben"))
  end
end