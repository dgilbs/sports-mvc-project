require 'pry'

require_relative '../environment.rb'


# Cech=Player.new("Petr Cech")
# Gibbs=Player.new("Kieran Gibbs")
# Ramsey=Player.new("Aaron Ramsey")
# Walcott=Player.new("Theo Walcott")

man_u=Team.new("Manchester United")
arsenal=Team.new("Arsenal")
man_c=Team.new("Manchester City")
liverpool=Team.new("Liverpool")

a_players=["Petr Cech", "Kieran Gibbs", "Aaron Ramsey", "Theo Walcott"]
a_players.each do |player|
  x=Player.new(player)
  arsenal.add_player(x)
  
end

mu_players=["David De Gea", "Wayne Rooney", "Memphis Depay", "Bastian Schweinsteiger"]
mu_players.each do |player|
  x=Player.new(player)
  man_u.add_player(x)
  
end

mc_players=["Joe Hart", "Vincent Kompany", "Sergio Aguero", "Pablo Zabaleta"]
mc_players.each do |player|
  x=Player.new(player)
  man_c.add_player(x)
end

l_players=["Simon Mingolet", "Jordan Henderson", "Adam Lallana", "Kolo Toure"]
l_players.each do |player|
  liverpool.add_player(Player.new(player))
end



louis=Coach.new("Louis Van Gaal")
wegner=Coach.new("Arsense Wegner")



arsenal.hire_coach(wegner)
man_u.hire_coach(louis)




# binding.pry

# puts "test"
