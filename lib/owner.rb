class Owner

  attr_reader  :name, :species
  @@owners = []
  def initialize(name)
    @name = name
    @species = "human"
    @@owners << self
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
