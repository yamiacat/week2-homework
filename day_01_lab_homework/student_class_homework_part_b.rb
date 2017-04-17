class SportsTeam

   attr_accessor :team_name, :players, :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach

  end


  def replace_coach(new_coach)
    @coach = new_coach
  end

end
