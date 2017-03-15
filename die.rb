class Die

  attr_reader :sides

  def initialize()
    @sides = 6
  end

  def roll()
    return rand(1 .. @sides)
  end

end