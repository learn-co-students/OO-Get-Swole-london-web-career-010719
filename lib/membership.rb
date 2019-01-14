class Membership
  attr_reader :cost, :gym

  @@all = []

  def initialize(cost, gym)
    @cost = cost
    @gym = gym
    @@all << self
  end

# Get a list of all memberships
def self.all
  @@all
end


end
