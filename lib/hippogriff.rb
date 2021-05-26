class Hippogriff

  attr_reader :name, :color
  attr_accessor :moonrocks

  def initialize(name, color)
    @name = name
    @color = color
    @moonrocks = []
  end

  def fly(rock)
    rock.magicalness = true
    @moonrocks.push(rock)
  end

  def sack
    @moonrocks.to_h
  end

end

class Moonstone

  attr_reader :color
  attr_accessor :magicalness

  def initialize(color)
    @color = color
    @magicalness = false
  end

  def magic?
    @magicalness
  end

end
