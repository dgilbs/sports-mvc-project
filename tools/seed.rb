require 'pry'

require_relative '../environment.rb'


# Cech=Player.new("Petr Cech")
# Gibbs=Player.new("Kieran Gibbs")
# Ramsey=Player.new("Aaron Ramsey")
# Walcott=Player.new("Theo Walcott")

ManU=Team.new("Manchester United")
Arsenal=Team.new("Arsenal")
ManC=Team.new("Machester City")
Liverpool=Team.new("Liverpool")

APlayers=["Petr Cech", "Kieran Gibbs", "Aaron Ramsey", "Theo Walcott"]
APlayers.each do |player|
  x=Player.new(player)
  Arsenal.add_player(x)
  
end

MUPlayers=["David De Gea", "Wayne Rooney", "Memphis Depay", "Bastian Schweinsteiger"]
MUPlayers.each do |player|
  x=Player.new(player)
  ManU.add_player(x)
  
end


Louis=Coach.new("Louis Van Gaal")
Wegner=Coach.new("Arsense Wegner")



Arsenal.hire_coach(Wegner)
ManU.hire_coach(Louis)




# binding.pry

# puts "test"
