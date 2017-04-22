class Office

  attr_accessor :entry_fee, :takings

  def initialize(entry_fee)
    @entry_fee = entry_fee
    @takings = 0
  end

  def check_guest_in(room, guest)
    if guest.money < @entry_fee
      return "You can't afford this - beat it!"
    elsif room.occupants.count < room.capacity
       room.occupants << guest
       guest.money -= @entry_fee
       @takings += @entry_fee
    else
       return "That room is too full!"
    end
  end

  def check_guest_out(room, guest)
    room.occupants.include?(guest) ? room.occupants.delete(guest) : "That person is not in this room."
  end

  def move_guest(room_to_move_out_of, guest, room_to_move_to)
    check_guest_out(room_to_move_out_of, guest)
    check_guest_in(room_to_move_to, guest)
  end

  def add_guest_to_room_queue(guest_to_queue, room_to_queue_for)
    room_to_queue_for.guest_queue << guest_to_queue
  end

  def get_room_status(target_room)
    return "#{target_room.occupants[0].name} is singing #{target_room.playlist[0].title}!"
  end

  def get_room_queue_status(target_room)
    if target_room.guest_queue.count == 1
      return "There is 1 person queuing for #{target_room.room_name}."
    else
      return "There are #{target_room.guest_queue.count} people queuing for #{target_room.room_name}."
    end
  end

end
