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
puts "Choose your level of realism:"
puts ""
puts "[0] Basic    [1] Challenging    [2] Hyper-realistic    [100] Hardcore"
puts ""
print "> "
gets
puts "LOL, NO. I PUT THIS TOGETHER IN A WEEKEND. BASIC IT IS!"
  end

  def get_room_name
    puts ""
    puts "What would you like this CodeClanCaraokeCim room to be called?"
    print "> "
    return gets.chomp.to_s.upcase
  end

  def get_room_size
    puts""
    puts "How many people can fit in that room?"
    puts "(20 or less is probably a good idea!)"
    print "> "
    input = gets.chomp.to_i
    if input == 0
      puts ""
      puts "PICK A PROPER NUMBER, WISEASS!"
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
      puts "PICK A PROPER NUMBER, WISEASS!"
      get_entrance_fee
    else
      return input
    end
  end

  def confirm_room_details(room, office)
    7.times {puts ""}
    puts "--------|-\\-------#------------------------------------------------+
        |  }            +=====+                                    |
--------|-/-------------|-----|------------------------------------|
        |/    3         |     |       (@)                          |
-------/|---------------|---(@)-------|---(@)----------------------|
      / |     4        (@)            |   |   (@)                  |
-----{--|-\\---------------------------|---|---|---(@)--------------|
      \\_|_/                           |   |   |   |                |
--------|\\----------------------------|---|---|---|----------------+
        |_}                           +===========+
"
    3.times {puts ""}
    puts "Alrighty then! Your CodeClanCaraokeCim room is called \"#{room.room_name}\" \nand has a capacity of #{room.capacity} people."
    puts "You are going to charge £#{office.entry_fee} to get in."
    puts ""
    puts "Press enter to continue..."
    gets.chomp
  end

  def get_soft_drink_name(room)
    puts ""
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
    8.times {puts ""}
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
    5.times {puts ""}
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
    15.times {puts ""}
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
      return
    elsif
      input == "y"
      puts "What song title do you want to add?"
      print "> "
      title = gets.chomp.capitalize
      puts "And who is the artist for that song?"
      print "> "
      artist = gets.chomp.capitalize
      song_to_be_added = Song.new(artist, title)
      song_library << song_to_be_added
    19.times {puts ""}
      puts "#{title} by #{artist} has been added to the library!"
      get_song_library(song_library)
    else
    19.times {puts ""}
      puts "THAT WAS A YES OR NO QUESTION, BUB."
      get_song_library(song_library)
    end
  end


  def get_custom_guests(guest_array, drinks_array, song_library)
    17.times {puts ""}
    puts "Alrighty then!"
    puts ""
    puts "CodeClanCaraokeCim now has #{guest_array.count} pre-generated customers that may or\nmay not be named after Cohort 12 and its tutors."
    puts ""
    puts "Would you like to add some extra guests?\n(I must warn you, it's kinda a hassle) (Y/N)"
    print "> "
    input = gets.chomp.downcase
    if input == "n"
    20.times {puts ""}
      puts "Phew! Alrighty then!"
      return
    elsif
      input == "y"
      puts "Who would you like to add?"
      print "> "
      name = gets.chomp.capitalize
      puts "How much money do they start with?"
      print "> "
      money = gets.chomp.to_i
      puts "What's the title of their favourite song? (I did warn you it'd be a hassle!)"
      print "> "
      title = gets.chomp.capitalize
      puts "...and who is it by?"
      print "> "
      artist = gets.chomp.capitalize
      their_favourite_song = Song.new(artist, title)
      song_library << their_favourite_song
      puts "Type a number to select their favourite drink:"
      puts "1 for #{drinks_array[0].drink_name}."
      puts "2 for #{drinks_array[1].drink_name}."
      puts "3 for #{drinks_array[2].drink_name}."
      drink_selection = gets.chomp.to_i
      guest_to_be_added = Guest.new({
        "name" => name,
        "money" => money,
        "favourite_song" => their_favourite_song,
        "favourite_drink" => drinks_array[drink_selection-1]})
      guest_array << guest_to_be_added
      puts ""
      puts "#{name} has been added to the game!\nThey like #{artist} and #{drinks_array[drink_selection-1].drink_name} and have £#{money} to spend!"
      get_custom_guests(guest_array, drinks_array, song_library)
    else
    19.times {puts ""}
      puts "THAT WAS A YES OR NO QUESTION, BUB."
      get_custom_guests(guest_array, drinks_array, song_library)
    end
  end

  def summarise_song_library_and_guestlist(song_library, guest_array)
    puts ""
    puts "The songs in your song library are:"
    song_library.each {|song| puts "#{song.title} by #{song.artist}" }
    puts ""
    puts "The guests in this game will be:"
    guest_array.each {|guest| puts "#{guest.name}, drinking #{guest.favourite_drink.drink_name}, carrying £#{guest.money} and looking to sing #{guest.favourite_song.artist}."}
  end

  def starting_conditions(office, room)
    puts ""
    puts "Like all great works of literature, the game begins in media res.\n\nThe night is starting to pick up, but all of the other staff\nhave called in sick.\n\nYou will have do EVERYTHING yourself!"
    puts ""
    puts "Press enter to begin."
    gets.chomp
    13.times {puts ""}
  end

  def summarise_turn_conditions(office, room)
    puts "Right now in #{room.room_name}:"
    puts ""
    puts office.get_room_song_status(room)
    puts ""
    puts office.get_room_money_status(room)
    puts ""
    puts office.get_room_guest_drinking_status(room)
    puts ""
    puts office.get_room_queue_status(room)
  end


  def game_turn_option(office, room, drinks_array)
    puts ""
    puts "What do you want to do this round?"
    puts "[1] To work the front office, let people in and adjust the entry fee"
    puts "[2] To work the bar and adjust drink prices and strength"
    puts "[3] To work security and eject unruly or unconscious guests"
    action_choice = gets.chomp.to_i

    case action_choice
    when 0 then do_nothing_useful
    when 1 then work_front_office(office, room)
    when 2 then work_bar(office, room, drinks_array)
    when 3 then work_security(office, room)
    else do_nothing_useful
    end
  end

    def do_nothing_useful
    19.times {puts ""}
      puts "You have a bit of a tizzy and get nothing done."
      puts "Press enter to start the next round."
      gets.chomp
    end

    def work_front_office(office, room)
    19.times {puts ""}
      puts "Welcome to the front office"
      puts ""
      puts "The entry fee is currently set to £#{office.entry_fee}."
      puts office.get_room_queue_status(room)
#SORT QUEUE INTO PEOPLE WILLING TO PAY ENTRY FEE AND NOT
      interested_punters = []
      uninterested_punters = []
      room.guest_queue.each {|guest| (guest.money/10) > office.entry_fee ? interested_punters << guest.name : uninterested_punters << guest.name
      }
      puts ""
      puts "The following potential guests would be happy to pay the entry fee: #{interested_punters.join(", ")}."
      puts ""
      puts "The following guests will NOT pay the entry fee: #{uninterested_punters.join(", ")}."
      puts ""
      puts "Who do you want to let in?"
      print "> "
      admitted_guest = gets.chomp.capitalize
      room.guest_queue.each {|guest|
        if guest.name == admitted_guest && interested_punters.include?(admitted_guest)
          office.check_guest_in(room, guest)
          room.guest_queue.delete(guest)
          puts "#{guest.name} has been let in to #{room.room_name}."
          puts ""
        elsif guest.name == admitted_guest && uninterested_punters.include?(admitted_guest)
          puts "#{guest.name} says the entry fee is outrageous!"
          puts ""
        else
          next
        end
      }
      puts "What do you want to set the entry fee to?"
      print "> "
      new_entry_fee = gets.chomp.to_i
      office.entry_fee = new_entry_fee
      puts "The entry fee for next round will be £#{office.entry_fee}."
      interested_punters = []
      uninterested_punters = []
    end

    def work_bar(office, room, drinks_array)
      19.times {puts ""}
      puts "Welcome to the bar"
      puts office.get_room_guest_drinking_status(room)
      puts ""
      drinks_array.each {|beverage|
        puts "#{beverage.drink_name} currently costs £#{beverage.price} per drink, and has a strength of #{beverage.strength}."}
        puts ""
        puts "[1] To adjust the drink prices"
        puts "[2] To adjust the drink strengths"
        input = gets.chomp.to_i
        if input == 1
          adjust_drink_prices(drinks_array)
        elsif input == 2
          adjust_drink_strengths(drinks_array)
        else
          do_nothing_useful
        end
    end





    def adjust_drink_prices(drinks_array)
      19.times {puts ""}
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
      puts "What do you want to charge for #{drinks_array[0].drink_name}?"
      print "> "
      soft_drink_price = gets.chomp.to_i
      19.times {puts ""}
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
      puts "What do you want to charge for #{drinks_array[1].drink_name}?"
      print "> "
      pint_price = gets.chomp.to_i
      19.times {puts ""}
      puts "                          //
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
      puts "What do you want to charge for #{drinks_array[2].drink_name}?"
      print "> "
      spirits_price = gets.chomp.to_i

      drinks_array[0].price = soft_drink_price
      drinks_array[1].price = pint_price
      drinks_array[2].price = spirits_price

      drinks_array.each {|beverage|
        puts "#{beverage.drink_name} currently costs £#{beverage.price} per drink, and has a strength of #{beverage.strength}."}

    end

    def adjust_drink_strengths(drinks_array)
      19.times {puts ""}
      puts "Welcome to the bar"
    end

    def work_security(office, room)
    19.times {puts ""}
      puts "Welcome to the security office"
      puts ""
      puts office.get_room_guest_drinking_status(room)
      puts ""
      puts "Who would you like to throw out of #{room.room_name}?"
      print "> "
      ejectee = gets.chomp.capitalize
      18.times {puts ""}
      office.kick_guest_out_by_name(room, ejectee)
      puts "#{ejectee} has been kicked out of #{room.room_name}."
      puts ""
    end


end








  #
  # def end_session
  #   puts "Right, you've sung Bohemian Rhapsody - that's it for the night. Sling yer hook!"
  # end


"
  _.,_
,-'.' .`-,
;; '. ' `. ;` - _
_,-; ' ; `.  ,% .-,  -
  *hic*          ,_.,-'`   ';; ; : ;%'  | |   \\
___  _._,-`'\\            `'-`'  _.,' `.   )
__,--`-,,`'  ,._,.-`-., _.,-.--.-,`''`  |  _|   |__
`---'////\\ /  .-,     `-`-^--`'^`-...,,| | |.,/
//\\)(/   `-\\.-.                   | `-'
( .-;                  |   |    ,.
`-~ ~~-.              `._.'  ,/ /
`~ ~~~ ~~                 /,.`)
               //  /
              /_ `/
             (  `/
              `-'
"
