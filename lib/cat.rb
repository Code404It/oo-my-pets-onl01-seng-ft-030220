class Cat
  attr_accessor :name, :mood
  @@all =[]
  
  def initialize(name, owner)
    @owner - owner
    @name = name
    @mood = "nervous"
  @@all << self
  
  end
end 