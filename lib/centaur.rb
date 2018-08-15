class Centaur

  attr_reader :name, :breed
  attr_accessor :crankiness, :standing, :laying, :sleeping

  def initialize(name, breed, standing=true, laying=false, sleeping=false)
    @name = name
    @breed = breed
    @standing = standing
    @laying = laying
    @sleeping = sleeping
  end

  def shoot
    @crankiness += 1
    if @crankiness < 3
       "Twang!!!"
     else
      "NO!"
    end
  end

  def run
   @crankiness += 1
   if @crankiness < 3
     "Clop clop clop clop!!!"
   else
     "NO!"
   end
  end

  def cranky?
    if @crankiness < 3
      "false"
    else
      "true"
    end
  end

  def standing?
    @standing
  end

  def sleep
    if @standing
      "NO!"
    else
      @sleeping = true
      @crankiness = 0
    end
  end

  def lay_down
    @crankiness = 3
    @standing = false
    @laying = true
  end

  def laying?
    @laying
  end

  def stand_up
    @standing = true
  end

end
