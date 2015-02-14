class Vampire

  attr_reader :name
  attr_accessor :pet

  def initialize (name, pet="bat", thirstiness=true)
    @name = name
    @pet = pet
    @thirstiness = thirstiness
  end

  def thirsty?
    @thirstiness
  end

  def drink
    @thirstiness = false
  end


end
