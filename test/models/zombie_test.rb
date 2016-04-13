require 'test_helper'

class ZombieTest < ActiveSupport::TestCase
  test 'valid?' do
    zombie = build(:zombie)
    assert zombie.valid?
  end
end
