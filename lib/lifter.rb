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
      Membership.all.select {|membership| membership.lifter_name == self}
  end

  def gyms
    memberships.map { |membership| membership.gym}
  end

  def self.lift_total
    all.map { |lifter| lifter.lift_total}
  end

  def self.average_lift_total
      lift_total.inject{ |sum, lift_total| sum + lift_total }.to_f/ lift_total.length
  end

  def costs
      memberships.map {|membership| membership.cost}
  end

  def total_costs
      costs.inject { |sum, costs| sum + costs }
  end

  def sign_up(cost,gym)
      Membership.new(cost,self,gym)
  end

end
