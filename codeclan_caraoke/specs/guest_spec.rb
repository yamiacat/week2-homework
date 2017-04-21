require("minitest/autorun")
require("minitest/emoji")
require_relative("../guest.rb")
require_relative("../song.rb")

class TestGuest < MiniTest::Test

  def setup
    @song1 = Song.new("Motorhead", "Ace of Spades")
    @song2 = Song.new("They Might Be Giants", "Birdhouse In Your Soul")
    @guest1 = Guest.new("Elizabeth", 50, @song1)
  end

  def test_guest_has_name
    assert_equal("Elizabeth", @guest1.name)
  end

  def test_guest_has_money
    assert_equal(50, @guest1.money)
  end

  def test_guest_has_favourite_song
    assert_equal("Ace of Spades", @guest1.favourite_song.title)
  end



end
