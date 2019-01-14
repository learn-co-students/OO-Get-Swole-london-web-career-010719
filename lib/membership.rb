class Membership
  attr_reader :cost, :lifter_name, :gym

@@all = []

  def initialize(cost,lifter_name,gym)
    @cost = cost
    @lifter_name = lifter_name
    @gym = gym 
    @@all << self
  end

  def self.all
    @@all
  end
end
