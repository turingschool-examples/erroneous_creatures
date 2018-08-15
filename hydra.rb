class Hydra

  attr_reader :name
  attr_accessor :heads, :deadness

  def initialize(name, heads)
    @name = name
    @heads = heads
    @deadness = false
  end

  def battle
    @heads -= 1
    if @deadness = false
      true
    else
      false
    end
  end

  def dead?
    @heads = 0
  end

end
