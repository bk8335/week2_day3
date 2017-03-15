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


end