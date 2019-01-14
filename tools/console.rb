# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
lifter1 = Lifter.new("jack",150)
lifter2 = Lifter.new("jill",40)
lifter3 = Lifter.new("Milly",100)

gym1 = Gym.new("pure gym")
gym2 = Gym.new("gym group")
gym3 = Gym.new("virgin")


# cost,lifter_name,gym
membership1 = Membership.new(30,lifter1,gym1)
membership2 = Membership.new(20,lifter2,gym2)
membership3 = Membership.new(30,lifter3,gym1)
membership4 = Membership.new(150,lifter3,gym3)


binding.pry

puts "Gains!"
