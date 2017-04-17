class SportsTeam

   attr_accessor :coach, :points
   attr_reader :team_name, :players

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0

  end


  def replace_coach(new_coach)
    @coach = new_coach
  end

  def add_player(new_player)
    @players << new_player
  end

  def check_player_is_in_team(name_to_check)
    for team_mate in @players
      return true if name_to_check == team_mate
    end
    return "They're not on the team."
  end

  def update_score(match_result)
    @points += 1 if match_result == "win"
    @points -= 1 if match_result == "lose"
    @points += 0 if match_result == "draw"
  end

end
