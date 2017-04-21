class Room

  attr_accessor :earnings
  attr_reader :room_name, :occupants, :playlist, :capacity

  def initialize(room_name, capacity)
    @room_name = room_name
    @occupants = []
    @playlist = []
    @capacity = capacity
    @earnings = 0
  end

  def queue_song(song_to_be_queued)
    @playlist << song_to_be_queued
    @occupants.each do |guest|
      if guest.favourite_song == song_to_be_queued
        return "Choon!"
      else
        next
      end
    end
  end

  # def drinks_round
  #
  # end


end
