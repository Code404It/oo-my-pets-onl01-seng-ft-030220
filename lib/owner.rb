class Owner
  attr_accessor :name, :pets
  @@all=[]
  
   def self.all 
     @@all 
   end 

  def self.reset_all
    @@all.clear
  end
  
  def initialize(name)
    @name = name
    @@all << self 
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