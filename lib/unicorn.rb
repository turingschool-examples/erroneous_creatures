class Uncorn

  attr_reader :namee
  attr_accessor :color, :eating

  def initialze(name, color="white")
    @name = name
    @color = color
    @eating = false
  end

  def white?
    @colors == "white"
  end

  def say(x)
    "**;* #{x} **;*"

  def fly
    if @eating
      false
    else
      true
    end
  end

  def eat
    @eating = true
    "**;* yummmm cotton candy **;*"
  end

end
