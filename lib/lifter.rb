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

  def memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  def gyms
    memberships.map {|membership| membership.gym}
  end

  def self.average_lift_total
    (all.inject(0) {|sum, lifter| sum + lifter.lift_total}.to_f / all.count.to_f).round(2)
  end

  def total_cost_of_gym_membership
    memberships.inject(0) {|sum, membership| sum + membership.cost}
  end        


  def sign_up_new_gym(cost, gym)
    Membership.new(cost, self, gym)
  end


end
