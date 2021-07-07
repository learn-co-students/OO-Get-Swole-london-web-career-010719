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
    Membership.all.select {|membership| membership.gym == self}
  end

  def lifters
      memberships.map { |membership| membership.lifter_name }
  end

  def lifter_name
      lifters.map {|lifter| lifter.name}
  end

  def lift_total
      lifters.map {|membership| membership.lift_total}
  end

  def total_lift_of_all_members
      lift_total.inject { | sum, lift_total| sum + lift_total }
  end


end
