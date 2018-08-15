class Werewolf
  attr_reader :name
              :location

  attr_accessor :human,
                :change,
                :werewolf

  def initialize(name, location="london")
    @name = name
    @location = location
    @human = true
    @change = 0
    @werewolf = false
  end

  def human?
    if @change.odd?
      false
    else
      true
    end
  end

  def change!
    @change += 1
  end

  def werewolf?
    if @change.odd?
      @werewolf = true
    else
      @werewolf = false
    end
  end

end
