class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@owners = []

  def initialize (species)
    @species = species
    @pets = { :fishes => [], :dogs => [], :cats => [] }
    @@owners << self
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
  end

  def walk_dogs
    pets[:dogs].map {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].map {|cat| cat.mood = "happy"}
  end
  
  # def walk_dogs
  #   pets[:dogs].map {|dog| dog.mood = "happy"}
  # end
    

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@owners.length
  end

end
