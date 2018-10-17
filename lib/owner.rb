class Owner

  # attr_accessor :pets

  @@all  = []

  def self.all
    @@all
  end

  def initialize
    @@all << self
    # @pets = {:cats => [], :dogs => [], :fish => []}
  end

end
