gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'vampire'

class VampireTest < Minitest::Test
  def test_it_has_a_name
    vampire = Vampire.new("Dracula", "red")
    assert_equal "Dracula", vampire.name
  end

  def test_it_is_named_something_else
    vampire = Vampire.new("Vladimir", "blue")
    assert_equal "Vladimir", vampire.name
  end

  def test_it_keeps_a_pet_bat_by_default
    vampire = Vampire.new("Ruthven", "indigo")
    assert_equal "bat", vampire.pet
  end

  def test_it_can_have_other_pets
    vampire = Vampire.new("Varney", "orange", "fox")
    assert_equal "fox", vampire.pet
  end

  def test_it_is_thirsty_by_default
    vampire = Vampire.new("Count von Count", "black")
    assert vampire.thirsty?
  end

  def test_it_is_not_thirsty_after_drinking
    vampire = Vampire.new("Elizabeth Bathory", "purple")
    vampire.drink
    refute vampire.thirsty?
  end

  def test_it_wears_a_cape_that_can_be_any_color
    vampire = Vampire.new("Elizabeth Bathory", "purple")
    assert_equal "purple", vampire.cape_color
    vampire2 = Vampire.new("Count von Count", "black")
    assert_equal "black", vampire2.cape_color
  end

  def test_it_can_sleep
    vampire = Vampire.new("Elizabeth Bathory", "purple")
    assert_equal true, vampire.sleep
  end

  def test_it_can_wake_up
    vampire = Vampire.new("Elizabeth Bathory", "purple")
    assert_equal true, vampire.wake
  end

  def test_it_is_thirsty_when_it_awakens
    vampire = Vampire.new("Elizabeth Bathory", "purple")
    vampire.drink
    vampire.sleep
    vampire.wake
    assert_equal true, vampire.thirsty?
  end
    
end
