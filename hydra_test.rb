gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'hydra'

class HydraTest < Minitest::Test

  def test_it_has_a_name
    hydra = Hydra.new("susie", 5)
    assert_equal "susie", hydra.name
  end

  def test_it_can_have_many_heads
    hydra = Hydra.new("susie", 5)
    assert_equal 5, hydra.heads
  end

  def test_it_battles_a_greek_god
    hydra = Hydra.new("susie", 5)
    assert hydra.respond_to?(:battle)
  end


  def test_it_loses_a_head_with_each_battle
    hydra = Hydra.new("susie", 5)
    hydra.battle
    assert_equal 4, hydra.heads
  end

  def test_it_dies_if_it_loses_all_heads
    hydra = Hydra.new("susie", 5)
    5.times do
      hydra.battle
    end
    assert_equal true, hydra.dead?
  end

  def test_it_can_no_longer_battle_when_dead
    hydra = Hydra.new("susie", 5)
    5.times do
      hydra.battle
    end
    assert_equal false, hydra.battle
  end
  
end
