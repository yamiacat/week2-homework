require("minitest/autorun")
require("minitest/emoji")
require_relative("../guest.rb")
require_relative("../drink.rb")

class TestDrink < MiniTest::Test

  def setup
    @hard_liquour = Drink.new(7, "whisky", 5)
    @soft_drink = Drink.new(1, "coke", -1)
  end

  def test_drink_has_price
    assert_equal(7, @hard_liquour.price)
  end

  def test_drink_has_name
    assert_equal("whisky", @hard_liquour.drink_name)
  end

  def test_drink_has_strength
    assert_equal(-1, @soft_drink.strength)
  end







end
