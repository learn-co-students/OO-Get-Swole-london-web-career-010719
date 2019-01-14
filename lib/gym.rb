class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end


# Get a list of all gyms
  def self.all
    @@all
  end


# Get a list of all memberships at a specific gym
def available_memberships
  Membership.all.select{|x| x.gym == self}
end
#
# Get a list of all the lifters that have a membership to a specific gym
def gym_members

end

#
# Get a list of the names of all lifters that have a membership to that gym

#
# Get the combined lift total of every lifter has a membership to that gym


end
