class Piece

attr_reader :name, :position

  def initialize(name)
    @name = name
    @position = 0
  end

  def move_position(size_of_move)
    @position += size_of_move
  end

end
