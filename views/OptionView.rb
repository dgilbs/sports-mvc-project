class OptionView
  def render
    puts "What stats would you like to see: a team, a player, or a coach?"
    action=gets.chomp
  end 
end