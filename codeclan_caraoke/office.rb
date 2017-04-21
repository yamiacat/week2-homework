class Office




  def check_guest_in(room, guest)
     if room.occupants.count < room.capacity
       room.occupants << guest
     else
       "That room is too full!"
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
