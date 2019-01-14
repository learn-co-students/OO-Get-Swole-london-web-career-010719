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

  def self.lift_total
    all.map {|lifter| lifter.lift_total}
  end

  def self.lift_average
    total = lift_total.inject {|sum, i| sum+i}.to_f
    amount = lift_total.length.to_f
    total/amount
  end

  def membership_cost
    cost = memberships.map {|membership| membership.cost}
    cost.inject(0) {|sum, i| sum+i}
  end


  def new_membership(cost, gym)
    Membership.new(cost, self, gym)
  end

end
