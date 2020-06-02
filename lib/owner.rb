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
    self.all.count
  end
  
  def self.reset_all
    self.all.clear
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def cats 
    Cat.all.select { |cat| cat.owner == self }
  end
  
  def dogs 
    Dog.all.select { |dog| dog.owner == self }
  end
  
  def buy_cat
    Cat.new()
  end
  
end