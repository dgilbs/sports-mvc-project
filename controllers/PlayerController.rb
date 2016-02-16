class PlayerController
  def see
    puts "What player do you want to see?"
    player_request=gets.chomp
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
    puts "#{player.name} now plays for #{team.name}"
    puts "Their new roster is:"
    team.list_roster
  end
end