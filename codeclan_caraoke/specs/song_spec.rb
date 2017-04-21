require("minitest/autorun")
require("minitest/emoji")
require_relative("../song.rb")

class TestSong < MiniTest::Test

  def setup
    @song = Song.new("Motorhead", "Ace of Spades")
    @song2 = Song.new("They Might Be Giants", "Birdhouse In Your Soul")
  end

  def test_song_has_title
    assert_equal("Ace of Spades", @song.title)
  end

  def test_song_has_artist
    assert_equal("They Might Be Giants", @song2.artist)
  end



end
