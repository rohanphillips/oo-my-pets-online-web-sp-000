class Owner
  #attr_accessor :name
  attr_writer  :name
  def initialize(name)
    @name = name
  end
end
