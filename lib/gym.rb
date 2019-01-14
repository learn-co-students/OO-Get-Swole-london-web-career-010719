class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end


  def memberships
    Membership.all.select {|membership| membership.gym == self}
  end

  def lifters
    memberships.map {|membership| membership.lifter}
  end

  def lifters_names
    lifters.map {|lifter| lifter.name}
  end

  def lift_total
    lifts = lifters.map {|lifter| lifter.lift_total}
    lifts.inject {|sum, i| sum+i}
  end

  def self.all
    @@all
  end
end
