require_relative("./drink.rb")

class Guest
  attr_accessor :money, :inebriation
  attr_reader :name, :favourite_song, :favourite_drink

  def initialize(options)
   @money = options['money']
   @name = options['name']
   @favourite_song = options['favourite_song']
   @favourite_drink = options['favourite_drink']
   @inebriation = 0
  end


  def buy_drink
    @inebriation += @favourite_drink.strength
    @money -= @favourite_drink.price

  end


end
