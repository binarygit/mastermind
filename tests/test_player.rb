require "minitest/autorun"
require_relative "../lib/Player.rb"

class TestPlayer < Minitest::Test
  def test_that_player_is_skynet
    player = Player.new
    assert player.skynet?
  end

  def test_that_player_is_not_skynet
    player = Player.new('Avi')
    refute player.skynet?
  end
end
