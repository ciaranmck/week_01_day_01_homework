require('minitest/autorun')
require_relative('../team')

class TestTeam < Minitest::Test

  def setup
    @team = Team.new("Dream Team", ["Tim", "Bob", "Joe"], "Ciaran", 0)
  end

  def test_new_player
    @team.new_player("John")
    assert_equal("John", @team.players.last)
  end

  def test_check_name
    assert_equal(true, @team.check_name("Joe"))
  end

  def test_points__win
    assert_equal(3, @team.result("win"))
  end

  def test_points__loss
    assert_equal(-1, @team.result("loss"))
  end

end
