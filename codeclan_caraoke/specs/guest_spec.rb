require("minitest/autorun")
require("minitest/emoji")
require_relative("../guest.rb")
require_relative("../song.rb")
require_relative("../drink.rb")

class TestGuest < MiniTest::Test

  def setup
    @song1 = Song.new("Motorhead", "Ace of Spades")
    @song2 = Song.new("They Might Be Giants", "Birdhouse In Your Soul")
    @hard_liquour = Drink.new(7, "whisky", 4)
    @guest1 = Guest.new("Elizabeth", 50, @song1, @hard_liquour)
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

  def test_guest_has_preferred_drink
    assert_equal(@hard_liquour, @guest1.favourite_drink)
  end

  def test_guest_has_inebriation_level_of_0_default
    assert_equal(0, @guest1.inebriation)
  end

  def test_guest_inebriation_changes_with_drink
    @guest1.buy_drink
    assert_equal(4, @guest1.inebriation)
  end

  def test_guest_money_decreases_when_drink_bought
    @guest1.buy_drink
    assert_equal(43, @guest1.money)
  end

end
