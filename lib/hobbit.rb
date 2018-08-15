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
    if @age > 32
      true
    else
      false
    end
  end

  def play
    @tiredness += 1
    if @age > 32
      @playable = false
    else
      @playable = true
    end
  end

  def tired?
    if @tiredness >= 3
      true
    else
      false
    end
  end
end
