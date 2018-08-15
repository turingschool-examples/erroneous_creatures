class Unicorn

  attr_reader :namee
  attr_accessor :color, :eating

  def initialize(name, color="white")
    @name = name
    @color = color
    @eating = false
  end

  def white?
    if color = "white"
      true
    else
      false
    end
  end

  def say(x)
    "**;* #{x} **;*"

  def fly
    if @eating
      true
    else
      false
    end
  end

  def eat
    @eating = true
    "**;* yummmm cotton candy **;*"
  end

end
