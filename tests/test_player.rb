require "minitest/autorun"
require_relative "../lib/Player"

class TestPlayer < Minitest::Test
  def test_that_player_is_skynet
    player = Player.new
    assert player.send(:skynet?)
  end

  def test_that_player_is_not_skynet
    player = Player.new('Avi')
    refute player.send(:skynet?)
  end
end
