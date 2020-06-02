class Owner
  
  attr_reader :species, :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
  def self.count
    @@all.count
  end
  
end