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

  def memberships
    Membership.all.select{|mem| mem.gym == self}
  end

  def lifters
    self.memberships.map {|mem| mem.lifter}.uniq
  end

  def lifter_names
    self.lifters.map {|lifter| lifter.name}.uniq
  end

  def combined_total
    self.lifters.inject(0){|sum, lifter| sum += lifter.lift_total}
  end

end
