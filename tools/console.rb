require 'pry'
require_relative '../environment.rb'
require_relative 'seed'

def reload!
  load("../environment.rb")
end 


action=nil
while action != "exit"
  # puts "What stats would you like to see: a team, a player, or a coach?"
  # action=gets.chomp
  action=OptionView.new.render
  case action
    when "team"
      puts "Do you want to see(S), create(C), update(U), or delete(D)?"
      action=gets.chomp
      controller=TeamController.new
      case action
        when "S"
          controller.see
        when "C"
          controller.create
        when "U"
          controller.add_player
        when "D"
          #remove an existing team
      end
    when "player"
      puts "Do you want to see a player(S) or create a player(C)?"
      action=gets.chomp
      controller=PlayerController.new
      case action
        when "S"
          controller.see
        when "C"
          controller.create
      end
    when "coach"
      controller=CoachController.new
      controller.see
      # puts "Which coach would you like to see?"
      # action=gets.chomp
      # found_coach=Coach.all.find do |coach|
      #   coach.name==action
      # end
      # puts "#{found_coach.name} is the coach for #{found_coach.team.name}."
  

  end
end
  