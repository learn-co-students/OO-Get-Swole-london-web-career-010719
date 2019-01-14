class Lifter
  attr_reader :name, :lift_total

  @@all = []


  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end


  def self.all
    @@all
  end

  # Get a list of all the memberships that a specific lifter has
  def memberships
    Membership.all.select {|membership| membership.lifter.name == @name}
  end

  # Get a list of all the gyms that a specific lifter has memberships to
  def gyms
    memberships.map{|membership| membership.gym.name}
  end

  # Get the average lift total of all lifters
  def self.average_total
    total = Lifter.all.map{|lifter| lifter.lift_total}
    sum = total.sum
    sum / total.length
  end

  # Get the total cost of a specific lifter's gym memberships
  def membership_cost
    memberships.collect {|membership| membership.cost}.sum
  end

  # Given a gym and a membership cost, sign a specific lifter up for a new gym
  def new_membership(cost, gym)
    Membership.new(cost, gym, self)
  end

end
