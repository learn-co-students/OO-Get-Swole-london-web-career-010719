# central class
# a membership is initialized with a cost and the gym that it belongs to


class Membership
  attr_reader :cost, :gym, :lifter

  @@all = []

  def initialize(cost, gym, lifter)
    @cost = cost
    @gym = gym
    @lifter = lifter
    @@all << self
  end


  def self.all
    @@all
  end


end
