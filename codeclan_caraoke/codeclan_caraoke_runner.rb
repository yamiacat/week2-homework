require_relative("./room.rb")
require_relative("./song.rb")
require_relative("./office.rb")
require_relative("./guest.rb")
require_relative("./viewer.rb")


class SimCaraoke

  def initialize(viewer)
    @viewer = viewer

    @viewer.greeting
    room_1_name = @viewer.get_room_name
    room_1_capacity = @viewer.get_room_size

    room_1 = Room.new(room_1_name, room_1_capacity)

    @viewer.confirm_room_details(room_1)
  end


  def run
    while @playlist[0].title != "Bohemian Rhapsody"

    end

    @viewer.end_session
  end




end


simcaraoke = SimCaraoke.new(Viewer.new)

simcaraoke.run
