class Room

  attr_reader :room_name, :occupants, :playlist

  def initialize(room_name)
    @room_name = room_name
    @occupants = []
    @playlist = []
  end

end
