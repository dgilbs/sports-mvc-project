class PlayerController
  def see
    player_request=SeePlayerView.new.render
    player=Player.find_player(player_request)
    puts "#{player.name} plays for #{player.team.name}."
  end

  def create
    puts "What is the name of the new player?"
    name=gets.chomp
    player=Player.new(name)
    puts "What team does he play for?"
    team=Team.find_team(gets.chomp)
    team.add_player(player)
    UpdatedRosterView.new.render(player, team)
  end
end