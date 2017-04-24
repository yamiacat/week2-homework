require_relative("./room.rb")
require_relative("./song.rb")
require_relative("./office.rb")
require_relative("./guest.rb")
require_relative("./viewer.rb")
require_relative("./drink.rb")

class CimCaraoke

  def initialize(viewer)
    @viewer = viewer

#START GAME, NAME ROOM AND SET CAPACITY AND FEE

    @viewer.greeting

    room_1_name = @viewer.get_room_name
    room_1_capacity = @viewer.get_room_size
    entrance_fee = @viewer.get_entrance_fee

    @room_1 = Room.new(room_1_name, room_1_capacity)
    @office = Office.new(entrance_fee)

    @viewer.confirm_room_details(@room_1, @office)

#SET UP DRINKS MENU

    soft_drink_name = @viewer.get_soft_drink_name(@room_1)
    pint_name = @viewer.get_pint_name
    hard_liquour_name = @viewer.get_hard_liquour_name(@room_1)

    @soft_drink = Drink.new(2, soft_drink_name, -1)
    @pint = Drink.new(4, pint_name, 2)
    @hard_liquour = Drink.new(7, hard_liquour_name, 4)

    @drinks_array = [@soft_drink, @pint, @hard_liquour]

    @viewer.confirm_drink_details(@soft_drink, @pint, @hard_liquour)

#SET UP SONG LIBRARY

    @song1 = Song.new("Motorhead", "Ace of Spades")
    @song2 = Song.new("They Might Be Giants", "Birdhouse In Your Soul")
    @song3 = Song.new("Alice in Chains", "Rooster")
    @song4 = Song.new("Iron Maiden", "Holy Smoke")
    @song5 = Song.new("Carly Rae Jepson", "Call Me Maybe")
    @song6 = Song.new("Cyndi Lauper", "Girls Just Wanna Have Fun")
    @song7 = Song.new("They Might Be Giants", "Birdhouse In Your Soul")
    @song8 = Song.new("The Beatles", "Rocky Raccoon")
    @song9 = Song.new("MIA", "Paper Planes")
    @song10 = Song.new("Spin Doctors", "Two Princes")

    @song_library = [@song1, @song2, @song3, @song4, @song5, @song6, @song7, @song8, @song9, @song10]

    @viewer.get_song_library(@song_library)

#SET UP RANDOMISED GUESTS

    d10 = [1,2,3,4,5,6,7,8,9,10]


#REFACTOR THIS TO USE .each IN YOUR COPIOUS FREE TIME

    @guest1 = Guest.new("Matt", ((d10.shuffle.first + 5) * 10), @song_library.shuffle.first, @drinks_array.shuffle.first)
    @guest2 = Guest.new("Ally", ((d10.shuffle.first + 5) * 10), @song_library.shuffle.first, @drinks_array.shuffle.first)
    @guest3 = Guest.new("Eoghan", ((d10.shuffle.first + 5) * 10), @song_library.shuffle.first, @drinks_array.shuffle.first)
    @guest4 = Guest.new("Richard", ((d10.shuffle.first + 5) * 10), @song_library.shuffle.first, @drinks_array.shuffle.first)
    @guest5 = Guest.new("Nick", ((d10.shuffle.first + 5) * 10), @song_library.shuffle.first, @drinks_array.shuffle.first)
    @guest6 = Guest.new("Gill", ((d10.shuffle.first + 5) * 10), @song_library.shuffle.first, @drinks_array.shuffle.first)
    @guest7 = Guest.new("Marilena", ((d10.shuffle.first + 5) * 10), @song_library.shuffle.first, @drinks_array.shuffle.first)
    @guest8 = Guest.new("Irma", ((d10.shuffle.first + 5) * 10), @song_library.shuffle.first, @drinks_array.shuffle.first)
    @guest9 = Guest.new("Louise", ((d10.shuffle.first + 5) * 10), @song_library.shuffle.first, @drinks_array.shuffle.first)
    @guest10 = Guest.new("Lewis", ((d10.shuffle.first + 5) * 10), @song_library.shuffle.first, @drinks_array.shuffle.first)
    @guest11 = Guest.new("Alex", ((d10.shuffle.first + 5) * 10), @song_library.shuffle.first, @drinks_array.shuffle.first)
    @guest12 = Guest.new("Charlie", ((d10.shuffle.first + 5) * 10), @song_library.shuffle.first, @drinks_array.shuffle.first)
    @guest13 = Guest.new("Johnny", ((d10.shuffle.first + 5) * 10), @song_library.shuffle.first, @drinks_array.shuffle.first)
    @guest14 = Guest.new("Mike", ((d10.shuffle.first + 5) * 10), @song_library.shuffle.first, @drinks_array.shuffle.first)
    @guest15 = Guest.new("Chris", ((d10.shuffle.first + 5) * 10), @song_library.shuffle.first, @drinks_array.shuffle.first)
    @guest16 = Guest.new("Daniel", ((d10.shuffle.first + 5) * 10), @song_library.shuffle.first, @drinks_array.shuffle.first)
    @guest17 = Guest.new("Paul", ((d10.shuffle.first + 5) * 10), @song_library.shuffle.first, @drinks_array.shuffle.first)
    @guest18 = Guest.new("Mungo", ((d10.shuffle.first + 5) * 10), @song_library.shuffle.first, @drinks_array.shuffle.first)
    @guest19 = Guest.new("Simon", ((d10.shuffle.first + 5) * 10), @song_library.shuffle.first, @drinks_array.shuffle.first)
    @guest20 = Guest.new("Craig", ((d10.shuffle.first + 5) * 10), @song_library.shuffle.first, @drinks_array.shuffle.first)
    @guest21 = Guest.new("Sandy", ((d10.shuffle.first + 5) * 10), @song_library.shuffle.first, @drinks_array.shuffle.first)
    @guest22 = Guest.new("Matthew", ((d10.shuffle.first + 5) * 10), @song_library.shuffle.first, @drinks_array.shuffle.first)


  @guest_array = [@guest1, @guest2, @guest3, @guest4, @guest5,
     @guest6, @guest7, @guest8, @guest9, @guest10, @guest11,
    @guest12, @guest13, @guest14, @guest15, @guest16, @guest17,
    @guest18, @guest19, @guest20, @guest21, @guest22]

  @viewer.get_custom_guests(@guest_array, @drinks_array, @song_library)

#SUMMARY OF EVERYTHING TO TEST ITS WORKING
  @viewer.summarise_song_library_and_guestlist(@song_library, @guest_array)

#CREATE STARTING CONDITIONS FOR GAME
  songs_to_load = @song_library.shuffle
  songs_to_load.each{|song| @room_1.queue_song(song)}

  number_in_already = ((d10.shuffle.first/2)+1)
  number_aready_queuing = d10.shuffle.first

  guests_already_inside = @guest_array.shuffle.pop(number_in_already)

  guests_already_inside.each {|guest| @office.check_guest_in(@room_1, guest)}

  guests_already_queuing = @guest_array.shuffle.pop(number_aready_queuing)

  guests_already_queuing.each{|guest|
  @office.add_guest_to_room_queue(guest, @room_1)}

  @viewer.starting_conditions(@office, @room_1)
  @viewer.summarise_turn_conditions(@office, @room_1)

  @remaining_guests = @guest_array
  end

  def run
    while @room_1.playlist[0].title != "Bohemian Rhapsody"
      @viewer.game_turn_option(@office, @room_1)
      @room_1.take_turn
      @viewer.summarise_turn_conditions(@office, @room_1)

#HOW ARE DUPLICATE PEOPLE GETTING IN THE MIX?
      # available_guests = @guest_array
      # @room1.occupants.each {|guest|
      #   if available_guests.include?(guest) == true
      #     available_guests.delete(guest)
      #   else
      #     next
      #   end}
      #
      # @room1.guest_queue.each {|guest|
      #   if available_guests.include?(guest) == true
      #     available_guests.delete(guest)
      #   else
      #     next
      #   end}

      d10 = [1,2,3,4,5,6,7,8,9,10]
      number_to_join_queue = (d10.shuffle.first/2)
      guests_joining_queue = @remaining_guests.shuffle.pop(number_to_join_queue)
      guests_joining_queue.each{|guest|
      @office.add_guest_to_room_queue(guest, @room_1)}

    end

    @viewer.end_session
  end











end


cimcaraoke = CimCaraoke.new(Viewer.new)

cimcaraoke.run
