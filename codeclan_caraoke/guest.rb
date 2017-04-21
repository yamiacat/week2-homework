class Guest
  attr_accessor :money
  attr_reader :name

  def initialize(name, money)
   @money = money
   @name = name
  end

end
