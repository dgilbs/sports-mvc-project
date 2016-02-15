require 'pry'
class Team

  attr_reader :name
  attr_accessor :stadium, :coach

  @@all=[]

  def initialize(name)
    @name=name
    @@all<<self
  end

  def roster
    Player.all.select do |player|
      player.team==self 
    end
  end

  def self.all
    @@all
  end

  def add_player(player)
    player.team=self
  end

  def hire_coach(coach)
    coach.team=self
  end

  def find_players
    x=Player.all.select do |player|
      player.team==self
    end
  end

  def list_roster
    find_players.each do |player|
      puts player.name
    end
  end

  def self.find_team(team_name)
    self.all.find do |team|
      team.name==team_name
    end

  end

  # binding.pry



end