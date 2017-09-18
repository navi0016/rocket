gem 'activesupport', '5.1.3'
require "minitest/autorun"
require_relative "rocket"


class RocketTest < Minitest::Test
  # Write your tests here!
  def setup
    @rocket = Rocket.new
  end

  def test_flying?
    result = @rocket.flying?
    refute result
  end

  def test_lift_off_if_flying_is_false
    result = @rocket.lift_off
    assert result

  end

  def test_lift_off_is_flying_is_true
    @rocket = Rocket.new(flying: true)
    result = @rocket.lift_off
    refute result
  end

  def test_land_if_not_flying
    result = @rocket.land
    refute result
  end

  def test_land_if_flying
    @rocket = Rocket.new(flying: true)
    result = @rocket.land
    assert result
  end

  def test_status_if_flying
    @rocket = Rocket.new(flying: true)
    result = @rocket.status
    assert result
  end

  def test_status_if_not_flying
    result = @rocket.status
    assert result
  end




end
