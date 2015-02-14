class Unicorn

  attr_reader :name
  attr_accessor :color, :eating

  def initialize(name, color="white")
    @name = name
    @color = color
    @eating = false
  end

  def white?
     color == "white" ? true : false
  end

  def say(x)
     "**;* #{x} **;*"
  end

  def fly
    @eating ? false : true
  end

  def eat
    @eating = true
    "**;* yummmm cotton candy **;*"
  end

end
