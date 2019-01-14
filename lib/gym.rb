class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end


  def self.all
    @@all
  end

  # Get a list of all memberships at a specific gym
  def memberships_at_gym
    Membership.all.select {|membership| membership.gym == self}
  end

  # Get a list of all the lifters that have a membership to a specific gym
  def lifters
    memberships_at_gym.collect {|membership| membership.lifter}.uniq
  end

  # Get the combined lift total of every lifter has a membership to that gym
  def lift_total
    lifters.collect {|lifter| lifter.lift_total}.sum
  end

end
