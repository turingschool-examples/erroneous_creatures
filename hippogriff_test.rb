gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'hippogriff'

class HippogriffTest < Minitest::Test

  def test_it_has_a_name
    hippogriff = Hippogriff.new("jane", :magenta)
    assert_equal "jane", hippogriff.name
  end

  def test_it_can_be_any_color
    hippogriff = Hippogriff.new("jane", :magenta)
    assert_equal :magenta, hippogriff.color
  end

  def test_it_can_fly
    hippogriff = Hippogriff.new("jane", :magenta)
    assert hippogriff.respond_to?(:fly)
  end

  def test_it_has_a_moonrock_sack
    hippogriff = Hippogriff.new("jane", :magenta)
    assert hippogriff.respond_to?(:sack)
  end

  def test_when_created_its_sack_is_empty
    hippogriff = Hippogriff.new("jane", :magenta)
    assert hippogriff.moonrocks.empty?
  end

  def test_when_it_files_it_collects_a_unique_moonrock
    hippogriff = Hippogriff.new("jane", :magenta)
    rock = Moonstone.new("sparkly")

    hippogriff.fly(rock)
    assert_equal 1, hippogriff.moonrocks.count
    assert_equal "sparkly", hippogriff.moonrocks.first.color
  end

  def test_when_created_the_moonrock_is_not_magical
    rock = Moonstone.new("sparkly")
    assert_equal false, rock.magic?
  end

  def test_when_moonrock_is_magical_when_collected
    hippogriff = Hippogriff.new("jane", :magenta)
    rock = Moonstone.new("sparkly")

    hippogriff.fly(rock)
    assert_equal true, rock.magic?
  end

end
