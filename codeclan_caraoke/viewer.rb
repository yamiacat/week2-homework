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
Welcome to CimCodeClanCaraoke, the best simulator of CodeClan-based karaoke! \n
     .          .                         .          .
    / \\        / \\                       / \\        / \\
   /   \\      /   \\                     /   \\      /   \\
  /   . \\    /   . \\       _____       /   . \\    /   . \\
 /   / \\_\\  /   / \\_\\     /    /      /   / \\_\\  /   / \\_\\
 |  |       |  |          /    /      |  |       |  |
 |  |       |  |         /    /_____  |  |       |  |
 |  |       |  |        /          /  |  |       |  |
 |  |       |  |       /_____     /   |  |       |  |
 |  |       |  |            /    /    |  |       |  |
 |  |  ___  |  |  ___      /   /      |  |   ___ |  |   ___
 \\  \\./  /  \\  \\./  /      /  /        \\  \\./  /  \\  \\./  /
  \\     /    \\     /       / /          \\     /    \\     /
   \\_._/      \\_._/        /             \\_._/      \\_._/



\n"
  end

  def get_room_name
    puts "What would you like this CodeClanCaraoke room to be called?"
    return gets.chomp.to_s
  end


  def get_room_size
    puts""
    puts "How many people can fit in that room?"
    input = gets.chomp.to_i
    if input == 0
      puts""
      puts "Pick a proper number, wiseass!"
      get_room_size
    else
      return input
    end
  end


  def confirm_room_details(room)
    puts "Alrighty then! Your CodeClanCaraoke room is called #{room.room_name} and has a capacity of #{room.capacity}."
  end





  def end_session
    puts "Right, you've sung Bohemian Rhapsody - that's it for the night. Sling yer hook!"
  end


end
