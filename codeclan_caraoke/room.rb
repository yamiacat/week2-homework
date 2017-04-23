class Room

  attr_accessor :earnings, :guest_queue
  attr_reader :room_name, :occupants, :playlist, :capacity

  def initialize(room_name, capacity)
    @room_name = room_name
    @occupants = []
    @playlist = []
    @capacity = capacity
    @earnings = 0
    @guest_queue = []
  end

  def queue_song(song_to_be_queued)
    @playlist << song_to_be_queued
    @occupants.each do |guest|
      if guest.favourite_song == song_to_be_queued
        return "#{guest.name} says 'Choon!'"
# NOT SURE HOW TO GET THIS TO OUTPUT YET - ADD TO REPORT?
      else
        next
      end
    end
    return nil
  end

  def take_turn
    @occupants.each {|singer|
      if singer.money >= singer.favourite_drink.price
        singer.buy_drink
        @earnings += singer.favourite_drink.price
        singer.money -= singer.favourite_drink.price
      else
        next
      end
    }
    @playlist.rotate!
    @occupants.rotate!

  end




end
