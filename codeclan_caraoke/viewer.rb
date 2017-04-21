require_relative("./room.rb")
require_relative("./song.rb")
require_relative("./office.rb")
require_relative("./guest.rb")
# require_relative("./codeclan_caraoke_runner.rb")

class Viewer

  # def get_number_of_rooms
  #
  # #THIS IS TOO AMBITIOUS, COME BACK TO IT
  # end

  def greeting
    puts "\n
    \n
    Welcome to SimCodeClanCaraoke - the premier simulator of code school based karaoke knock offs! \n

    .               .                     ________          / \\
  /   \\            / \\                   \\        \\        /   \\
 /      \\        /  .  \\       _____      \\  ____  \\     /   .  \\
/  |  \\   \\    /   / \\___\\    /    /      |  |  \\   |   /   / \\___\\
|  |   \\   |   |  |          /    /       |  |   |  |   |  |
|  |    \\  |   |  |         /    /_____   |  |   |  |   |  |
|  |____|  |   |  |        /          /   |  |   |  |   |  |
|  ______  |   |  |       /_____     /    |  |   |  |   |  |
|  |    |  |   |  |            /    /     |  |   |  |   |  |
|  |    |  |   |  |   ___      /   /      |  |   /  |   |  |   ___
|  |    |  |   \\   \\./  /      /  /       |  |__/   |    \\  \\./  /
/  \\   /   \\     \\     /       / /        /        /      \\     /
\\./     \\./        \\./          /        /________/        \\ . /

\n"
  end

  def get_room_name
    puts "What would you like your CodeClan Caraoke bar to be called?"
    return gets.chomp
  end


  def get_room_size
    puts "How many people can that room fit?"
    return gets.chomp
  end


  def confirm_room_details(room)
    puts "Your CodeClan Caraoke room is called #{room.room_name} and has a capacity of #{room.capacity}."
  end





  def end_session
    puts "Right, you've sung Bohemian Rhapsody - that's it for the night. Sling yer hook."
  end


end
