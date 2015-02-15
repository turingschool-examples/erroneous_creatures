class Hippogriff

  attr_reader :name, :color
  attr_accessor :moonrocks

  def initialize(name, color)
    @name = name
    @color = color
    @moonrocks = []
  end

  def fly(rock)
    @moonrocks.push(rock)
  end

  def sack
    @moonrocks
  end

end

class Moonstone

  attr_reader :color

  def initialize(color)
    @color = color
  end

end
