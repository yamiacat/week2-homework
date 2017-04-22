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

    soft_drink = Drink.new(2, soft_drink_name, -1)
    pint = Drink.new(4, pint_name, 2)
    hard_liquour = Drink.new(7, hard_liquour_name, 4)

    drinks_array = [soft_drink, pint, hard_liquour]

    @viewer.confirm_drink_details(soft_drink, pint, hard_liquour)

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

    song_library = [@song1, @song2, @song3, @song4, @song5, @song6, @song7, @song8, @song9, @song10]

    @viewer.get_song_library(song_library)

#SET UP RANDOMISED GUESTS

    d10 = [1,2,3,4,5,6,7,8,9,10]
    random_starting_cash = (d10.shuffle.first + 5) * 10
    random_favourite_song = song_library[d10.shuffle.first]
    random_favourite_drink = drinks_array[(d10.shuffle.first)/3]



  end


  def run
    while @playlist[0].title != "Bohemian Rhapsody"

    end

    @viewer.end_session
  end




end


cimcaraoke = CimCaraoke.new(Viewer.new)

# cimcaraoke.run
