class Hobbit

  attr_reader :name, :disposition
  attr_accessor :age, :playable, :tiredness

  def initialize (name, disposition="homebody")
    @name = name
    @disposition = disposition
    @age = 0
    @playable = true
    @tiredness = 0
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    @age > 32 ? true : false
  end

  def play
    @tiredness += 1
    @age > 32 ? @playable = false : @playable = true
  end

  def tired?
    @tiredness >= 3 ? true : false
  end

end
