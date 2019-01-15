class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    self.class.all << self
  end

  def self.all
    @@all
  end

  def sign_up_to_gym(gym, membership_cost)
    Membership.new(membership_cost, gym, self)
  end

  def memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  def total_membership_cost
    memberships.inject(0) {|sum, membership| sum + membership.cost }
  end

  def gyms
    memberships.map {|membership| membership.gym}.uniq
  end

  def self.lift_average
    all.inject(0) {|sum, lifter| sum + lifter.lift_total}.to_f / all.length
  end
end
