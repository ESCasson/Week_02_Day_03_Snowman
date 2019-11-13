require("minitest/autorun")
require("minitest/rg")

require_relative("../player")

class PlayerTest < Minitest::Test

  def setup
    @player_bob = Player.new("Bob")
  end

  def test_player_has_name
    assert_equal("Bob", @player_bob.name)
  end

def test_player_has_six_lives
assert_equal(6, @player_bob.lives)

end



end
