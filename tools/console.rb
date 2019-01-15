# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

gym1 = Gym.new("PureGym")
gym2 = Gym.new("TheGym")
gym3 = Gym.new("Jim")

lifter1 = Lifter.new("Abby", 50)
lifter2 = Lifter.new("Bob", 20)
lifter3 = Lifter.new("Chris", 40)
lifter4 = Lifter.new("Daniel", 10)

membership1 = Membership.new(20, lifter1, gym2)
membership2 = Membership.new(60, lifter4, gym1)
membership3 = Membership.new(80, lifter3, gym1)
membership4 = Membership.new(50, lifter3, gym3)
membership5 = Membership.new(10, lifter2, gym1)

binding.pry

puts "Gains!"
