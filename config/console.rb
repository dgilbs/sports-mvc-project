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
  end
# end
  