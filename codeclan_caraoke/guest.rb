require_relative("./drink.rb")

class Guest
  attr_accessor :money, :inebriation
  attr_reader :name, :favourite_song, :favourite_drink

  def initialize(name, money, favourite_song, favourite_drink)
   @money = money
   @name = name
   @favourite_song = favourite_song
   @favourite_drink = favourite_drink
   @inebriation = 0
  end


  def buy_drink
    @inebriation += @favourite_drink.strength
    @money -= @favourite_drink.price

  end


end
