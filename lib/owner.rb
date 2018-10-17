class Owner

  attr_accessor :pets
  attr_reader :species

  @@owners = []

  def initialize (species, pets = {:cats => [], :dogs => [], :fish => []})
    @species = species
    @pets = pets
    @@owners << self
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
