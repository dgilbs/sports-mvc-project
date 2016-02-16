class TeamController
  def create
    puts "What is the name of your new team?"
    response=gets.chomp
    new_team=Team.new(response)
    puts "Congrats! You have created #{new_team.name}. What player would you like to add?"
  end

  def see
    team_request=SeeTeamView.new.render
    found_team=Team.find_team(team_request)
    found_team.list_roster
  end

  def add_player
    teamname=AddTeamPlayerView.new.render
    team=Team.find_team(teamname)
    name=NewPlayerView.new.render
    player=Player.new(name)
    team.add_player(player)
    updated=UpdatedRosterView.new
    updated.render(player, team)
  end

  def delete
    
  end    

end