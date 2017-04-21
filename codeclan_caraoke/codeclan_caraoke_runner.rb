require_relative("./room.rb")
require_relative("./song.rb")
require_relative("./office.rb")
require_relative("./guest.rb")
require_relative("./viewer.rb")
require_relative("./drink.rb")

class SimCaraoke

  def initialize(viewer)
    @viewer = viewer

    @viewer.greeting

    room_1_name = @viewer.get_room_name
    room_1_capacity = @viewer.get_room_size
    entrance_fee = @viewer.get_entrance_fee

    room_1 = Room.new(room_1_name, room_1_capacity)
    office = Office.new(entrance_fee)

    @viewer.confirm_room_details(room_1, office)

    soft_drink_name = @viewer.get_soft_drink_name
    pint_name = @viewer.get_pint_name
    hard_liquour_name = @viewer.get_hard_liquour_name

    soft_drink = Drink.new(2, soft_drink_name)
    pint = Drink.new(4, pint_name)
    hard_liquour = Drink.new(7, hard_liquour_name)
  end


  def run
    while @playlist[0].title != "Bohemian Rhapsody"

    end

    @viewer.end_session
  end




end


cimcaraoke = SimCaraoke.new(Viewer.new)

# cimcaraoke.run
