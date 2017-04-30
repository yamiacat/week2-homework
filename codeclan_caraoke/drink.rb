class Drink

  attr_accessor :price, :strength
  attr_reader :drink_name

  def initialize(price, drink_name, strength)
    @price = price
    @drink_name = drink_name
    @strength = strength
  end




end
