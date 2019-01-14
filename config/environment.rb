require 'pry'
require_relative '../lib/gym'
require_relative '../lib/lifter'
require_relative '../lib/membership'

parik = Lifter.new("Parik", 132)
joe = Lifter.new("Joe", 321)
max = Lifter.new("Max", 432)

fitness_first = Gym.new("Fitness First")
the_gym = Gym.new("The Gym")

Membership.new(24.99, fitness_first, max)
Membership.new(16.99, the_gym, parik)
Membership.new(60.99, fitness_first, joe)


binding.pry
