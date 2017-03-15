require('minitest/autorun')
require('minitest/rg')
require_relative('../board')
require_relative('../piece')
require_relative('../die')

class TestBoard < MiniTest::Test

  def setup()
    @piece1 = Piece.new("Ben")
    @piece2 = Piece.new("Andrew")
    @piece3 = Piece.new("Sandy")

    pieces = [@piece1, @piece2, @piece3]

    @board1 = Board.new(pieces)

    @die1 = Die.new()
  end

  def test_board_size
    assert_equal(100, @board1.board_size)
  end

  def test_piece_position
    assert_equal(0, @piece1.position)
    assert_equal(0, @board1.position("Ben"))
  end

  def test_move_piece
    @board1.move_piece("Andrew", 3)
    assert_equal(3, @board1.position("Andrew"))
    @board1.move_piece("Andrew", 4)
    assert_equal(7, @board1.position("Andrew"))
  end

  def test_move_piece_die
    @board1.move_piece("Andrew", @die1.roll)
    assert_equal(true, (1..6).include?(@board1.position("Andrew")))
  end

  def test_current_player
    assert_equal(@piece1, @board1.current_player())
    assert_equal("Ben", @board1.current_player().name)
  end

  def test_end_turn
    @board1.end_turn()
    assert_equal(@piece2, @board1.current_player())
  end

  def test_has_current_player_won
    assert_equal(false, @board1.has_current_player_won())
    @board1.move_piece("Ben", 101)
    assert_equal(true, @board1.has_current_player_won())
  end

end