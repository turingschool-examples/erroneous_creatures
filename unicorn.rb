class Unicorn

  attr_reader :name
  attr_accessor :color

  def initialize(name, color="white")
    @name = name
    @color = color
  end

  def white?
     color == "white" ? true : false
  end

  def say(x)
     "**;* #{x} **;*"
  end

end
