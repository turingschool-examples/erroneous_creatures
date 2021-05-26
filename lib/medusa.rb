class Medusa

  attr_reader :name
  attr_accessor :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(x)
    x.stone = true
    @statues << x
  end

  def statues
    @statues
  end

end

class Person

  attr_reader :name
  attr_accessor :stone

  def initialize(name)
    @name = name
    @stone = false
  end

  def stoned?
    @stone
  end

end
