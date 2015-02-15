class Dragon

  attr_reader :name, :rider, :color
  attr_accessor :hungryness, :food_consumed, :fire

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungryness = true
    @food_consumed = 0
  end

  def hungry?
    @hungryness
  end

  def eat
   @food_consumed += 1
   @food_consumed < 3 ? @hungryness = true : @hungryness = false
  end

  def breathe_fire
    @hungryness ? @fire = false : @fire = true && @hungryness = true
  end

end
