require 'pry'
require_relative '../environment.rb'
require_relative 'seed'

def reload!
  load("../environment.rb")
end 


# action=nil
# while action != "exit"
  puts "What stats would you like to see: a team, a player, or a coach?"
  response=gets.chomp
  case response
    when "team"
      puts "Do you want to see a team or create a team?"
      action=gets.chomp
      case action
        when "see"
          puts "What team would you like to see?"
          team_request=gets.chomp
          found_team=Team.find_team(team_request)
          found_team.list_roster
        when "create"
          puts "What is the name of your new team?"
          response=gets.chomp
          new_team=Team.new(response)
          puts "Congrats! You have created #{new_team.name}"
      end
    when "player"
      puts "Do you want to see a player or create a player?"
      action=gets.chomp
      case action
        when "see"
          puts "What player do you want to see?"
          player_request=gets.chomp
          player=Player.find_player(player_request)
          puts "#{player.name} plays for #{player.team.name}."
        when "create"
          puts "What is the name of the new player?"
          name=gets.chomp
          player=Player.new(name)
          puts "What team does he play for?"
          team=Team.find_team(gets.chomp)
          team.add_player(player)
          binding.pry
          puts "#{player.name} now plays for #{team.name}"


      end

  

  end
# end
  