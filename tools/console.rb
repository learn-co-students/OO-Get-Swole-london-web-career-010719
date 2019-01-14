# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'



pure_gym = Gym.new("Pure-Gym")
thrive = Gym.new("Thrive")
virgin = Gym.new("Virgin")

mem1 = Membership.new(50, pure_gym)
mem2 = Membership.new(80, pure_gym)
mem3 = Membership.new(90, thrive)
mem4 = Membership.new(100, thrive)
mem5 = Membership.new(20, virgin)
mem6 = Membership.new(200, virgin)

john = Lifter.new("John", 60, [mem1])
harry = Lifter.new("Harry", 45, [mem2, mem4, mem5])
bob = Lifter.new("Bob", 90, [mem3, mem6, mem2])
guy = Lifter.new("Guy", 90, [mem4, mem5])
binding.pry

puts "Gains!"
