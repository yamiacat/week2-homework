class Drink

  attr_accessor :price
  attr_reader :drink_name, :strength

  def initialize(price, drink_name, strength)
    @price = price
    @drink_name = drink_name
    @strength = strength
  end




end
