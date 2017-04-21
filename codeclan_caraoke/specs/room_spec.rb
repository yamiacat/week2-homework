require("minitest/autorun")
require("minitest/emoji")
require_relative("../room.rb")

class TestRoom < MiniTest::Test

  def setup
    @room1 = Room.new("The Rawk Room")
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



end
