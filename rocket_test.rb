require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!
  # def setup
  #   @rocket = Rocket.new
  # end



  def test_name_is_random_name
    rocket = Rocket.new
    result = rocket.name

    assert result
  end

  def test_option_name_is_assigned
    rocket = Rocket.new(name: "Gina")

    result = rocket.name
    assert_equal(result, "Gina")
  end

  def test_colour_is_random_colour
    rocket = Rocket.new
    result = rocket.colour
    assert result
  end
  def test_option_colour_is_assigned
    rocket = Rocket.new(colour: "pink")
    result = rocket.colour
    assert_equal(result, "pink")
  end
  def test_flying_is_false
    rocket = Rocket.new
    result = rocket.flying?
    assert_equal(result, false)
  end
  def test_flying_is_true
    rocket = Rocket.new(flying: true)
    result = rocket.flying?
    assert result
  end
  def test_lift_off_return_false
    rocket = Rocket.new(flying: true)
    result = rocket.lift_off
    assert_equal(result, false)
  end
  def test_lift_off_return_true
    rocket = Rocket.new
    result = rocket.lift_off
    assert result
  end
  def test_land_return_true
    rocket = Rocket.new(flying: true)
    result = rocket.land
    assert result
  end
  def test_land_return_false
    rocket = Rocket.new
    result = rocket.land
    refute result
  end
  def test_status_return_flying
    rocket = Rocket.new(flying: true, name: "Gina")
    result = rocket.status
    assert_equal result, "Rocket Gina is flying through the sky!"
  end
  def test_status_return_lift_off
    rocket = Rocket.new(name: "Gina")
    result = rocket.status
    assert_equal result, "Rocket Gina is ready for lift off!"
  end
end
