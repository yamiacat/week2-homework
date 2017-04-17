require("minitest/autorun")
require("minitest/rg")
require_relative("./student_class_homework_part_b.rb")

class ClassHomeworkTest < MiniTest::Test

  def setup
    #BUGHUNTING IS A SPORT, ALRIGHT
    @team_1 = SportsTeam.new("Red Dwarf Posse", ["Lister", "Kryten", "The Cat", "Rimmer"], "Holly")
    @team_2 = SportsTeam.new("Sulaco Allstars", ["Hicks", "Hudson", "Vasquez", "Drake"], "Gorman")

  end


  def test_sportsteam_class_exists
    assert(SportsTeam)
  end

  def test_sportsteam_class_is_a_class
    assert_equal(Class, SportsTeam.class)
  end

  def test_sportsteam_name_getter
    assert_equal("Red Dwarf Posse", @team_1.get_team_name)
  end

  def test_players_getter
    assert_equal(["Hicks", "Hudson", "Vasquez", "Drake"], @team_2.get_players)
  end

  def test_coach_getter
    assert_equal("Holly", @team_1.get_coach)
  end

  def test_coach_setter
    assert_equal("Ripley", @team_2.replace_coach("Ripley"))
  end

end
