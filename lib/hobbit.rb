class Hobbit

  attr_reader :name, :disposition
  attr_accessor :age, :playable, :tiredness

  def initialize (name, disposition="homebody")
    @name = name
    @disposition = disposition
    @age = 0
    @tiredness = 0
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    @age > 32
  end

  def play
    if adult?
      false
    else
      @tiredness += 1
      true
    end
  end

  def tired?
    @tiredness >= 3
  end
end
