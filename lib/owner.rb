class Owner

  attr_accessor :pets

  @@owners = []

  def initialize (pets = {:cats => [], :dogs => [], :fish => []})
    @@owners << self
    @pets = pets
  end

  def self.all
    @@owners
  end

  def self.count
    @@owners.length
  end
  
end
