require("minitest/autorun")
require("minitest/emoji")
require_relative("../guest.rb")
require_relative("../drink.rb")

class TestDrink < MiniTest::Test

  def setup
    @whisky = Drink.new(7)
  end

   def test_drink_has_price
     assert_equal(7, @whisky.price)
   end







end
