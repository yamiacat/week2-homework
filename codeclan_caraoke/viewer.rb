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
Welcome to CodeClanCaraokeCim, the best simulator of CodeClan-based karaoke! \n
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
    puts "What would you like this CodeClanCaraokeCim room to be called?"
    print "> "
    return gets.chomp.to_s.upcase
  end


  def get_room_size
    puts""
    puts "How many people can fit in that room?"
    print "> "
    input = gets.chomp.to_i
    if input == 0
      puts ""
      puts "Pick a proper number, wiseass!"
      get_room_size
    else
      return input
    end
  end

  def get_entrance_fee
    puts""
    puts "How much will you charge for people to get in?"
    print "> "
    input = gets.chomp.to_i
    if input == 0
      puts""
      puts "Pick a proper number, wiseass!"
      get_entrance_fee
    else
      return input
    end
  end


  def confirm_room_details(room, office)
    puts ""
    puts "Alrighty then! Your CodeClanCaraokeCim room is called \"#{room.room_name}\" \nand has a capacity of #{room.capacity} people."
    puts "You are going to charge £#{office.entry_fee} to get in."
  end

  def get_soft_drink_name(room)
    puts ""
    puts "Alright, now, what soft drinks are you going to serve at \"#{room.room_name}\"?"
    puts "
      .-""` ``` `` ```""-.
     /'-.___________.-'\\
    |                   |
    |                   |
    |    __.......__    |
    |.-'`      ~    `'-.|
    |::-.___~______~.-'`|
    ;:::::.             ;
    |:::::.             |
    ::::::::.           |
    |::::::::::..       |
    |::::::::::::       |
    |::::::::::..       |
    |::::::::::::::     |
    |::::::::::::::..   |
    |:::::::::::::::::  |
     \\:::::::::::::::../
      '::::::::::::::.'
    "
    print "> "
    return gets.chomp.to_s
  end

  def get_pint_name
    puts ""
    puts "And what drinks are you going to serve by the pint?"
    puts "\n

|================|
(                )
 | !!           |
 | !!           |
 | !!           |
 | !!           |
 |              |
 |              |
 |              |
 |              |
 `=============='
 "
    print "> "
    return gets.chomp.to_s
  end

  def get_hard_liquour_name(room)
    puts ""
    puts "What spirits does \"#{room.room_name}\" serve?"
    puts "                        //
                       //
                      //
                     //
              _______||
         ,-'''       ||`-.
        (            ||   )
        |`-..._______,..-'|
        |            ||   |
        |     _______||   |
        |,-'''_ _  ~ ||`-.|
        |  ~ / `-.\\ ,-'\\ ~|
        |`-...___/___,..-'|
        |    `-./-'_ \\/_| |
        | -'  ~~     || -.|
        (   ~      ~   ~~ )
         `-..._______,..-'
\n"
    print "> "
    return gets.chomp.to_s
  end

  def confirm_drink_details(soft_drink, pint, hard_liquour)
    puts ""
    puts "Ok, you're serving #{soft_drink.drink_name} at £2 per drink, #{pint.drink_name} at £4 per pint,\n and #{hard_liquour.drink_name} at £7 per double to start."
    puts ""
    puts "Don't worry, you'll be able to jack up the prices\nand water down the drinks later!"
  end

 def get_song_library(song_library)
    puts ""
    puts "CodeClanCaraokeCim now comes with literally #{song_library.count} song titles\nin the default library!"
    puts "Would you like to add a custom song? (Y/N)"
    print "> "
    input = gets.chomp.downcase
    if input == "n"
      puts "Alrighty then!"
      return
    elsif
      input == "y"
      puts "What song title do you want to add?"
      print "> "
      title = gets.chomp
      puts "And who is the artist for that song?"
      print "> "
      artist = gets.chomp
      song_to_be_added = Song.new(artist, title)
      song_library << song_to_be_added
      puts "#{title} by #{artist} has been added to the library!"
      get_song_library(song_library)
    else
      puts "That was a yes or no question, bub."
      get_song_library(song_library)
    end

 end








  #
  # def end_session
  #   puts "Right, you've sung Bohemian Rhapsody - that's it for the night. Sling yer hook!"
  # end


#
#   _.,_
# ,-'.' .`-,
# ;; '. ' `. ;` - _
# _,-; ' ; `.  ,% .-,  -
#   *hic*          ,_.,-'`   ';; ; : ;%'  | |   \
# ___  _._,-`'\            `'-`'  _.,' `.   )
# __,--`-,,`'  ,._,.-`-., _.,-.--.-,`''`  |  _|   |__
# `---'////\ /  .-,     `-`-^--`'^`-...,,| | |.,/
# //\)(/   `-\.-.                   | `-'
# ( .-;                  |   |    ,.
# `-~ ~~-.              `._.'  ,/ /
# `~ ~~~ ~~                 /,.`)
#                //  /
#               /_ `/
#              (  `/
#               `-'



end
