class Coach
  attr_accessor :team, :name


  @@all=[]

  def initialize(name)
    @name=name
    @@all<<self
  end

  def self.all
    @@all
  end



end