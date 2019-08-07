class Dog
  attr_writer :name
  attr_accessor :owner
  @@dogs = []
  def initialize(name, owner)
    @name = name
    @owner = owner
    @@dogs << self
  end
end
