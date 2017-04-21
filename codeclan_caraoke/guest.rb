class Guest
  attr_accessor :money
  attr_reader :name, :favourite_song, :favourite_drink

  def initialize(name, money, favourite_song, favourite_drink)
   @money = money
   @name = name
   @favourite_song = favourite_song
   @favourite_drink = favourite_drink
  end



end
