class Dragon

  attr_reader :name, :rider, :color
  attr_accessor :hungriness, :food_consumed, :fire

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungriness = true
    @food_consumed = 0
  end

  def hungry?
    @hungriness
  end

  def eat
   @food_consumed += 1
   if food_consumed < 3
     @hungriness = true
   else
     @hungriness = false
   end
  end

  def breathe_fire
    if hungry?
      @fire = false
    else
      @fire = true
      @hungriness = true
    end
  end

end
