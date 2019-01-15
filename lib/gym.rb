class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    self.class.all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|membership| membership.gym == self}
  end

  def lifters
    memberships.map {|membeship| membeship.lifter}.uniq
  end

  def lifters_names
    lifters.map {|lifter| lifer.name}
  end

  def lift_total
    lifters.inject(0) {|sum, lifter| sum + lifter.lift_total}
  end
end
