class Centaur

  attr_reader :name, :breed                                 # => nil
  attr_accessor :crankiness, :standing, :laying, :sleeping  # => nil

  def initialize(name, breed, standing=true, laying=false, sleeping=false)
    @name = name               # => "jack"
    @breed = breed             # => "spotted"
    @crankiness = 0            # => 0
    @standing = standing           # => true
    @laying = laying            # => false
    @sleeping = sleeping          # => false
  end

  def shoot
    @crankiness += 1
    if @laying  = true
      "NO!"
    elsif @crankiness < 3
      "Twang!!!"
    else @crankiness >= 3
      "NO!"
    end
  end

  def run
    @crankiness += 1
    if @laying  = true
      "NO!"
    elsif @crankiness < 3
      "Clop clop clop clop!!!"
    else @crankiness >= 3
      "NO!"
    end
  end

  def cranky?
    if @crankiness < 3  # => true
      false             # => false
    else
      true
    end                 # => false
  end

  def standing?
    @standing
  end

  def sleep
      if @standing = true    # => true, true
        "NO!"                # => "NO!", "NO!"
      else @sleeping = true
        @crankiness = 0
      end                    # => "NO!", "NO!"
  end

  def lay_down
    @standing = false  # => false
    @laying = true     # => true
  end

  def laying?
    @laying
  end

  def stand_up
    @standing = true
  end

end

centaur = Centaur.new("jack", "spotted")  # => #<Centaur:0x007f9f84052898 @name="jack", @breed="spotted", @crankiness=0, @standing=true, @laying=false, @sleeping=false>

centaur.sleep     # => "NO!"
centaur.lay_down  # => true
centaur.sleep     # => "NO!"
centaur.cranky?   # => false
