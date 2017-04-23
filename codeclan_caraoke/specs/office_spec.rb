require("minitest/autorun")
require("minitest/emoji")
require_relative("../office.rb")
require_relative("../guest.rb")
require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../drink.rb")

class TestOffice < MiniTest::Test

  def setup
    @office = Office.new(18)
    @room1 = Room.new("The Rawk Room", 20)
    @room2 = Room.new("The Ballad Room", 1)
    @hard_liquour = Drink.new(7, "whisky", 5)
    @pint = Drink.new(4, "beer", 4)
    @guest1 = Guest.new("Elizabeth", 50, @song1, @hard_liquour)
    @guest2 = Guest.new("Helen", 40, @song2, @pint)
    @guest3 = Guest.new("Bob", 10, @song1, @pint)
    @guest4 = Guest.new("Cath", 18, @song2, @pint)
    @guest5 = Guest.new("Shell", 18, @song1, @hard_liquour)
    @song1 = Song.new("Motorhead", "Ace of Spades")
    @song2 = Song.new("They Might Be Giants", "Birdhouse In Your Soul")
  end

  def test_entry_fee_can_be_set
    assert_equal(18, @office.entry_fee)
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
    assert_equal("Bob is told 'You can't afford this - beat it!'", @office.check_guest_in(@room1, @guest3))
  end

  def test_guest_can_be_added_to_rooms_guest_queue
    @office.add_guest_to_room_queue(@guest3, @room1)
    assert_equal(@guest3, @room1.guest_queue[0])
  end

  def test_office_adds_entry_fee_to_takings
    @office.check_guest_in(@room2, @guest1)
    assert_equal(18, @office.takings)
  end

  def test_guest_money_decreases_when_entering
    @office.check_guest_in(@room2, @guest1)
    assert_equal(32, @guest1.money)
  end

  def test_office_can_get_room_to_report_status
    @office.check_guest_in(@room1, @guest1)
    @office.check_guest_in(@room1, @guest2)
    @room1.queue_song(@song1)
    @room1.queue_song(@song2)
    @room1.queue_song(@song3)
    assert_equal("Elizabeth is singing Ace of Spades!
    The Rawk Room has made £0.", @office.get_room_status(@room1))
  end

  def test_office_can_get_room_to_report_status_after_a_turn
    @office.check_guest_in(@room1, @guest1)
    @office.check_guest_in(@room1, @guest2)
    @room1.queue_song(@song1)
    @room1.queue_song(@song2)
    @room1.queue_song(@song3)
    @room1.take_turn
    assert_equal("Helen is singing Birdhouse In Your Soul!
    The Rawk Room has made £11.", @office.get_room_status(@room1))
  end

  def test_office_can_get_room_to_report_queue_status
    @office.add_guest_to_room_queue(@guest3, @room1)
    assert_equal("There is 1 person queuing for The Rawk Room.", @office.get_room_queue_status(@room1))
  end

  def test_office_can_get_room_to_report_queue_status_larger_queue
    @office.add_guest_to_room_queue(@guest2, @room1)
    @office.add_guest_to_room_queue(@guest3, @room1)
    assert_equal("There are 2 people queuing for The Rawk Room.", @office.get_room_queue_status(@room1))
  end

  def test_room_earnings_are_added_to_takings_when_reported
    @office.check_guest_in(@room1, @guest1)
    @room1.queue_song(@song1)
    @room1.take_turn
    @office.get_room_status(@room1)
    assert_equal(25, @office.takings)
    assert_equal(0, @room1.earnings)
  end

  def test_office_report_includes_broke_guests
    @office.check_guest_in(@room1, @guest1)
    @office.check_guest_in(@room1, @guest4)
    @room1.queue_song(@song1)
    @room1.queue_song(@song2)
    @room1.take_turn
    assert_equal("Cath is singing Birdhouse In Your Soul!
    The Rawk Room has made £7.\nCath has no more money!", @office.get_room_status(@room1))
  end

  def test_office_report_includes_multiple_broke_guests
    @office.check_guest_in(@room1, @guest1)
    @office.check_guest_in(@room1, @guest4)
    @office.check_guest_in(@room1, @guest5)
    @room1.queue_song(@song1)
    @room1.queue_song(@song2)
    @room1.take_turn
    assert_equal("Cath is singing Birdhouse In Your Soul!
    The Rawk Room has made £7.\nCath has no more money!\nShell has no more money!", @office.get_room_status(@room1))
  end

end
