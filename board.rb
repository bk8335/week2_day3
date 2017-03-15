class Board
  
  attr_reader :board_size

  def initialize(pieces, hazard)
    @pieces = pieces
    @board_size = 100
    @hazard = hazard
  end

  def position(piece_name)
    for each_piece in @pieces
        return each_piece.position if each_piece.name == piece_name
     end
  end

  def move_piece(size_of_move)
    current_player().move_position(size_of_move)
    if current_player.position == @hazard.start_point
      current_player().move_position(@hazard.board_change)
    end
  end

  def current_player()
    return @pieces.first()
  end

  def end_turn()
    @pieces.rotate!()
  end

  def has_current_player_won()
    return current_player().position >= @board_size
  end

  # def take_turn
  #   move_piece(@die1)

  # end
end