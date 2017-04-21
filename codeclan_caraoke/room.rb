class Room

  attr_reader :room_name, :occupants, :playlist, :capacity

  def initialize(room_name, capacity)
    @room_name = room_name
    @occupants = []
    @playlist = []
    @capacity = capacity
  end

  def queue_song(song_to_be_queued)
    @playlist << song_to_be_queued
  end


end
