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
  
  def buy_cat(cat)
    Cat.new(name, self)
  end
  
  def buy_dog(dog)
    Dog.new(name, self)
  end
  
  def walk_dogs
    self.dogs.each { |dog| dog.mood = "happy" }
  end
  
  def feed_cats
    self.cats.each { |cat| cat.mood = "happy" }
  end
  
  def sell_pets
    pets = self.cats && self.dogs 
    pets.each { |pet| pet.mood = "nervous" }
  end
  
  
  
end