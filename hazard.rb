class Hazard

  attr_reader :start_point, :board_change

  def initialize(start_point, board_change)
    @start_point = start_point
    @board_change = board_change
  end

end