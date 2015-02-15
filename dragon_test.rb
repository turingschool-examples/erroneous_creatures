gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'dragon'

class DragonTest < Minitest::Test
  def test_it_has_a_name
    dragon = Dragon.new("Ramoth", :gold, "Lessa")
    assert_equal "Ramoth", dragon.name
  end

  def test_it_has_a_rider
    dragon = Dragon.new("Ramoth", :gold, "Lessa")
    assert_equal "Lessa", dragon.rider
  end

  def test_it_has_a_color
    dragon = Dragon.new("Ramoth", :gold, "Lessa")
    assert_equal :gold, dragon.color
  end

  def test_a_different_dragon
    dragon = Dragon.new("Mnementh", :bronze, "F'lar")
    assert_equal "Mnementh", dragon.name
  end

  def test_a_different_dragons_rider
    dragon = Dragon.new("Mnementh", :bronze, "F'lar")
    assert_equal "F'lar", dragon.rider
  end

  def test_a_different_dragons_color
    dragon = Dragon.new("Mnementh", :bronze, "F'lar")
    assert_equal :bronze, dragon.color
  end

  def test_dragons_are_born_hungry
    dragon = Dragon.new("Canth", :brown, "F'nor")
    assert dragon.hungry?
  end

  def test_dragons_eat_a_lot
    dragon = Dragon.new("Canth", :brown, "F'nor")
    assert dragon.hungry?
    dragon.eat
    assert dragon.hungry?
    dragon.eat
    assert dragon.hungry?
    dragon.eat
    refute dragon.hungry?
  end

  def test_dragon_can_breath_fire
    dragon = Dragon.new("Canth", :brown, "F'nor")
    dragon.eat
    dragon.eat
    dragon.eat
    assert_equal false, dragon.hungry?
    assert_equal true, dragon.breathe_fire
  end

  def test_dragon_is_hungry_after_breathing_fire
    dragon = Dragon.new("Canth", :brown, "F'nor")
    dragon.eat
    dragon.eat
    dragon.eat
    dragon.breathe_fire
    assert dragon.hungry?
  end

  def test_it_can_not_breathe_fire_when_hungry
    dragon = Dragon.new("Canth", :brown, "F'nor")
    assert dragon.hungry?
    assert_equal false, dragon.breathe_fire
  end


end
