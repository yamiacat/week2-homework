require("minitest/autorun")
require("minitest/emoji")
require_relative("../office.rb")
require_relative("../guest.rb")
require_relative("../room.rb")
require_relative("../song.rb")

class TestOffice < MiniTest::Test

  def setup
    @guest1 = Guest.new("Elizabeth", 50, @song1)
    @guest2 = Guest.new("Helen", 20, @song2)
    @guest3 = Guest.new("Bob", 10, @song1)
    @room1 = Room.new("The Rawk Room", 20)
    @room2 = Room.new("The Ballad Room", 1)
    @office = Office.new
    @song1 = Song.new("Motorhead", "Ace of Spades")
    @song2 = Song.new("They Might Be Giants", "Birdhouse In Your Soul")
  end


  def test_office_can_check_guest_in
    @office.check_guest_in(@room1, @guest1)
    assert_equal("Elizabeth", @room1.occupants[0].name)
  end


  def test_office_can_check_guest_in_multiple_guests
    @office.check_guest_in(@room1, @guest1)
    @office.check_guest_in(@room1, @guest2)
    assert_equal("Helen", @room1.occupants[1].name)
  end


  def test_office_can_check_guest_out
    @office.check_guest_in(@room1, @guest1)
    @office.check_guest_out(@room1, @guest1)
    assert_equal([], @room1.occupants)

  end

  def test_office_returns_error_when_guest_not_found
    assert_equal("That person is not in this room.", @office.check_guest_out(@room1, @guest1))
  end

  def test_office_can_move_guest_between_rooms
    @office.check_guest_in(@room1, @guest1)
    @office.move_guest(@room1, @guest1, @room2)
    assert_equal("Elizabeth", @room2.occupants[0].name)
  end

  def test_room_cant_be_overcrowded
    @office.check_guest_in(@room2, @guest1)
    assert_equal("That room is too full!", @office.check_guest_in(@room2, @guest2))
  end

  def test_room_cant_be_overcrowded_by_move
    @office.check_guest_in(@room2, @guest1)
    @office.check_guest_in(@room1, @guest2)
    assert_equal("That room is too full!", @office.move_guest(@room1, @guest2, @room2))
  end

  def test_club_rejects_poor_people
    assert_equal("You can't afford this - beat it!", @office.check_guest_in(@room1, @guest3))
  end

end
