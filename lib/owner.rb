class Owner
  attr_accessor :name, :pets
  
  def self.reset_all
    OWNER.clear
  end
  
  def initialize(name)
    OWNER << self
    @name = name
    @pets = {:dogs => :cats}
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def buy_cat(name)
    pets[:cat] << Cat.new(name)
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    pets = {:dogs => :cats []}
  end

end