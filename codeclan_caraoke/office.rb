class Office

  attr_reader :entry_fee

  def initialize(entry_fee)
    @entry_fee = entry_fee

  end

  def check_guest_in(room, guest)
    if guest.money < @entry_fee
      return "You can't afford this - beat it!"
    elsif room.occupants.count < room.capacity
       room.occupants << guest
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

end
