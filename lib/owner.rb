class Owner
  attr_reader :name, :pets, :species
  @@all=[]
  
   def self.all 
     @@all 
   end 

  def self.reset_all
    @@all.clear
  end
  
  def initialize(name)
    @species= "human"
    @name = name
    @@all << self 
  end
   
   
   def say_species
      "I am a human."
   end
   
   def self.count 
       @@all.size 
   end
  
  def cats
    Cat.all.select do |cat|
      cat.owner == self
    end
  end
  
  def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end
  end
  
  def buy_cat(name)
    cat = Cat.new(name,self)
  end

  def buy_dog(name)
    dog =Dog.new(name,self)
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