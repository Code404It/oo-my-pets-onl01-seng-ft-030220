class Dog
  attr_accessor :mood, :owner
  attr_reader :name
  
    def initialize(name, owner)
    @owner = owner
    @name = name
    @mood = "nervous"
    @@all << self
  end
  
  def self.all
      @@all
 end
end