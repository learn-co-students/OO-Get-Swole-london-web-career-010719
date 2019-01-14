# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

gym1 = Gym.new("Globo Gym")
gym2 = Gym.new("Average Joe's")

lifter1 = Lifter.new("Joey", 32)
lifter2 = Lifter.new("Jay", 52)
lifter3 = Lifter.new("John", 62)
lifter4 = Lifter.new("Jim", 44)




binding.pry

puts "Gains!"
