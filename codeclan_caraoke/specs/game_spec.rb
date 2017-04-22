require("minitest/autorun")
require("minitest/emoji")
require_relative("../office.rb")
require_relative("../guest.rb")
require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../drink.rb")
require_relative("../game.rb")

class TestGame < MiniTest::Test

  def setup
    @hard_liquour = Drink.new(7, "whisky", 5)
    @pint = Drink.new(4, "beer", 4)
    @soft_drink = Drink.new(2, "coke", -1)
    @guest1 = Guest.new("Elizabeth", 500, @song1, "hard liquour")
    @guest2 = Guest.new("Helen", 200, @song2, "pint")
    @guest3 = Guest.new("Bob", 100, @song1, "soft drink")
    @room1 = Room.new("The Rawk Room", 20)
    @office = Office.new(18)
    @song1 = Song.new("Motorhead", "Ace of Spades")
    @song2 = Song.new("They Might Be Giants", "Birdhouse In Your Soul")
  end

#ACTUALLY, USE ROOM CLASS TO TAKE TURNS. MAYBE USE
# THIS TO PREPOPULATE ROOMS AND QUEUES



end
