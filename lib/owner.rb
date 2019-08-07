require "pry"
class Owner

  attr_reader  :name, :species
  @@owners = []
  def initialize(name)
    @name = name
    @species = "human"
    @@owners << self
  end

  def sell_pets
    nervous_cats = Cat.all.select{|n| n.mood == "nervous"}
    nervous_dogs = Dog.all.select{|n| n.mood == "nervous"}
    nervous_cats + nervous_dogs
    binding.pry
  end

  def buy_cat(name)
    newcat = Cat.new(name, self)
  end
  def buy_dog(name)
    newdog = Dog.new(name, self)
  end

  def feed_cats
    cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def walk_dogs
    dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def cats
    Cat.all.select{|n| n.owner == self}
  end
  def dogs
    Dog.all.select{|n| n.owner == self}
  end

  def say_species
    "I am a human."
  end

  def self.all
    @@owners
  end

  def self.count
    @@owners.size
  end

  def self.reset_all
    @@owners.clear
  end

end
