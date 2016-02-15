class Player
  attr_accessor :name, :team

  @@all=[]

  def initialize(name)
    @name=name
    @@all<<self
  end

  def self.all
    @@all
  end

  def self.list_all_players
    @@all.each do |player|
      puts player.name
    end
  end

  def self.find_player(player_name)
    self.all.find do |player|
      player.name==player_name
    end
  end


end