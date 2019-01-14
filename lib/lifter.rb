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
    Membership.all.select{|mem| mem.lifter == self}
  end

  def gyms
    self.memberships.map {|mem| mem.gym}.uniq
  end

  def self.average_lift
    liftsum = self.all.inject(0){|sum, lifter| sum += lifter.lift_total}
    liftsum / self.all.length
  end

  def total_cost
    self.memberships.inject(0){|sum, mem| sum += mem.cost}
  end

  def sign_up(gym, cost)
    if self.gyms.include?(gym)
      puts "This Lifter is already a Member of this Gym!"
    else
      Membership.new(cost, self, gym)
    end
  end

end
