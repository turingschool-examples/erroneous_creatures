class Hydra
  attr_reader :name, :color
  attr_accessor :heads

  def initialize(name, color)
    @name = name
    @color = color
    heads = [Head.new]
  end

  def regenerate(head)
    head.magicalness = true
    @heads.push(head)
  end

  def head_info
    @heads.to_h
  end
end

class Head
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
