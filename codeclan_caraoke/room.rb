class Room

  attr_reader :room_name, :occupants, :playlist

  def initialize(room_name)
    @room_name = room_name
    @occupants = []
    @playlist = []
  end

  def queue_song(song_to_be_queued)
    @playlist << song_to_be_queued
  end


end
