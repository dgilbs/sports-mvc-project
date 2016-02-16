class UpdatedRosterView
  def render(player, team)
    puts "#{player.name} now plays for #{team.name}"
    puts "Their new roster is:"
    team.list_roster
  end

end