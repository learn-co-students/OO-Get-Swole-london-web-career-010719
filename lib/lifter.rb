class Lifter
  attr_reader :name, :lift_total, :membership

  @@all = []

  def initialize(name, lift_total, membership)
    @name = name
    @lift_total = lift_total
    @membership = membership
    @@all << self
  end

# Get a list of all lifters
  def self.all
    @@all
  end
#
# Get a list of all the memberships that a specific lifter has
def memberships
self.membership
end
#
# Get a list of all the gyms that a specific lifter has memberships to
def gyms
  self.memberships.map {|x| x.gym }
end
#
# Get the average lift total of all lifters
def self.ave_lift_total
ave = self.all.inject(0){|sum, user| sum += user.lift_total}
ave/@@all.length
end
#
# Get the total cost of a specific lifter's gym memberships
def total_user_membership
self.memberships.inject(0){|sum, mem| sum += mem.cost}


end
#
# Given a gym and a membership cost, sign a specific lifter up for a new gym
def new_member(gym, membership_cost)
mem7 = Membership.new(membership_cost,gym)
self.membership << mem7
end

end
