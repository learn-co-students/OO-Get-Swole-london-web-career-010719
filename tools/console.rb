# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

lifter1 = Lifter.new("bob", 150)
lifter2 = Lifter.new("dave", 160)
lifter3 = Lifter.new("bill", 210)

gym1 = Gym.new("croydon")
gym2 = Gym.new("streatham")
gym3 = Gym.new("moorgate")
gym4 = Gym.new("old street")

membership1 = Membership.new(5, lifter1, gym1)
membership2 = Membership.new(10, lifter2, gym2)
membership3 = Membership.new(15, lifter3, gym4)
membership4 = Membership.new(10, lifter1, gym3)
membership5 = Membership.new(55, lifter2, gym3)

binding.pry

puts "Gains!"
