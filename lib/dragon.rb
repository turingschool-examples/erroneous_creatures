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
   if food_consumed < 3
     @hungryness = true
   else
     @hungryness = false
   end
  end

  def breathe_fire
    if hungry?
      @fire = false
    else
      @fire = true
      @hungryness = true
    end
  end

end
