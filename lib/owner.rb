class Owner

  attr_accessor :pets, :species

  @@owners = []

  def initialize (species, pets = {:cats => [], :dogs => [], :fish => []})
    @@owners << self
    @pets = pets
    @species = species
  end

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
