require('minitest/autorun')
require('minitest/rg')
require_relative('../board')
require_relative('../piece')
require_relative('../die')
require_relative('../hazard')

class TestBoard < MiniTest::Test

  def setup()
    @piece1 = Piece.new("Ben")
    @piece2 = Piece.new("Andrew")
    @piece3 = Piece.new("Sandy")

    pieces = [@piece1, @piece2, @piece3]

    @snake1 = Hazard.new(15, -2)
    @snake2 = Hazard.new(99, -98)
    @ladder1 = Hazard.new(37, 40)
    @ladder2 = Hazard.new(63, 5)

    hazards = [@snake1, @snake2, @ladder1, @ladder2]

    @board1 = Board.new(pieces, hazards)

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
    @board1.move_piece(3)
    assert_equal(3, @board1.position("Ben"))
    @board1.move_piece(4)
    assert_equal(7, @board1.position("Ben"))
    @board1.move_piece(4)
    assert_equal(0, @board1.position("Andrew"))
  end

  def test_move_piece__snake
    @board1.move_piece(15)
    assert_equal(13, @board1.current_player.position)
  end

  def test_move_piece_die
    @board1.move_piece(@die1.roll)
    assert_equal(true, (1..6).include?(@board1.position("Ben")))
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
    @board1.move_piece(101)
    assert_equal(true, @board1.has_current_player_won())
  end

  # def test_take_turn
  #   @board1.take_turn
  #   assert_equal(0, @board1.current_player.position)
  #   assert_equal(@piece2, @board1.current_player())

  #   expected = (1..6).include?(@board1.position("Ben"))
  #   assert_equal(true, expected)
  # end

end