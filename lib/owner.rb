class Owner
  OWNERS = []

  # attr_accessor :pets

  def self.all
    OWNERS
  end

  def initialize
    OWNERS << self
    # @pets = {:cats => [], :dogs => [], :fish => []}
  end

end
