require("minitest/autorun")
require("minitest/emoji")
require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../office.rb")
require_relative("../guest.rb")
require_relative("../drink.rb")

class TestRoom < MiniTest::Test

  def setup
    @office = Office.new(18)
    @whisky = Drink.new(7)
    @beer = Drink.new(4)
    @room1 = Room.new("The Rawk Room", 20)
    @song1 = Song.new("Motorhead", "Ace of Spades")
    @song2 = Song.new("They Might Be Giants", "Birdhouse In Your Soul")
    @guest1 = Guest.new("Elizabeth", 50, @song1, @whisky)

  end

  def test_room_has_name
    assert_equal("The Rawk Room", @room1.room_name)
  end

  def test_room_has_guest_array
    assert_equal([], @room1.occupants)
  end

  def test_room_has_song_queue
    assert_equal([], @room1.playlist)
  end

  def test_room_can_queue_song
    @room1.queue_song(@song1)
    assert_equal("Ace of Spades", @room1.playlist[0].title)
  end

  def test_room_has_capacity
    assert_equal(20, @room1.capacity)
  end

  def test_guests_react_to_their_favourite_song
    @office.check_guest_in(@room1, @guest1)
    assert_equal("Choon!", @room1.queue_song(@song1))
  end

  def test_room_has_earnings_total
    assert_equal(0, @room1.earnings)
  end

  # def test_room_adds_round_of_drinks_to_earnings
  #   @room1.drinks_round
  #   assert_equal(3, @room1.earnings)
  # end

end
