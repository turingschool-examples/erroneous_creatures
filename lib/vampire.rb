class Vampire

  attr_reader :name
  attr_accessor :pet, :cape_color

  def initialize(name, cape_color, pet="bat", thirstiness=true)
    @name = name
    @pet = pet
    @thirstiness = thirstiness
    @cape_color = cape_color
  end

  def thirsty?
    @thirstiness
  end

  def drink
    @thirstiness = false
  end

  def sleep
    true
  end

  def wake
    @thirstiness = true
  end
end
