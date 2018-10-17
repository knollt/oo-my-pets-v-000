class Owner

  attr_accessor :pets, :owner 

  @@all = []

  def self.all
    @@all
  end

  def initialize
    @@all << self
    @pets = {:cats => [], :dogs => [], :fish => []}
  end

end
