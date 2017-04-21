require("minitest/autorun")
require("minitest/emoji")
require_relative("../guest.rb")

class TestGuest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Elizabeth", 50)
  end

  def test_guest_has_name
    assert_equal("Elizabeth", @guest1.name)
  end

  def test_guest_has_money
    assert_equal(50, @guest1.money)
  end




end
