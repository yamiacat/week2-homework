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
    assert_equal("Red Dwarf Posse", @team_1.team_name)
  end

  def test_players_getter
    assert_equal(["Hicks", "Hudson", "Vasquez", "Drake"], @team_2.players)
  end

  def test_coach_getter
    assert_equal("Holly", @team_1.coach)
  end

  def test_coach_setter
    assert_equal("Ripley", @team_2.replace_coach("Ripley"))
  end

  def test_add_new_player_by_array_length
    @team_1.add_player("Polymorph")
    player_count = @team_1.players.count
    assert_equal(5, player_count)
  end

  def test_add_new_player_by_array_contents
    assert_equal(["Hicks", "Hudson", "Vasquez", "Drake", "Bishop"], @team_2.add_player("Bishop"))
  end

  def test_check_player_is_in_team
    assert_equal(true, @team_1.check_player_is_in_team("Lister"))
  end

  def test_check_player_is_not_in_team
    assert_equal("They're not on the team.", @team_1.check_player_is_in_team("Hollister"))
  end

  def test_points_are_zero
    assert_equal(0, @team_1.points)
  end

  def test_points_changes_with_win
    @team_2.update_score("win")
    assert_equal(1, @team_2.points)
  end

  def test_points_changes_with_loss
    @team_1.update_score("lose")
    assert_equal(-1, @team_1.points)
  end


  def test_points_changes_with_draw
    @team_2.update_score("draw")
    assert_equal(0, @team_2.points)
  end


end
