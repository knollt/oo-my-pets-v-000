class Owner

  attr_accessor :pets,

  @@owners = []

  def initialize (pets = {:cats => [], :dogs => [], :fish => []})
    @@owners << self
    @pets = pets
  end

end
