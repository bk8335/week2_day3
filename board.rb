class Board
  
  attr_reader :board_size

  def initialize(pieces)
    @pieces = pieces
    @board_size = 100
  end

  def position(piece_name)
    for each_piece in @pieces
        return each_piece.position if each_piece.name == piece_name
     end
  end

  def move_piece(piece_name, size_of_move)
    piece_to_move = nil
    for each_piece in @pieces
      piece_to_move = each_piece if each_piece.name == piece_name
    end
     piece_to_move.move_position(size_of_move)
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
end