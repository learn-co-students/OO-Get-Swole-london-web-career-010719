# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

#======= Seed Data =======#

chris = Lifter.new("Chris Camacho", 100)
gisela = Lifter.new("Gisela Velterop", 30)
jeff = Lifter.new("Jeff banks", 40)

golds = Gym.new("Golds Gym - LA")
gymbox = Gym.new("Gymbox - London")

m1 = Membership.new(30, golds, chris)
m2 = Membership.new(30, golds, gisela)
m3 = Membership.new(50, golds, jeff)
m4 = Membership.new(50, gymbox, chris)
m5 = Membership.new(100, gymbox, gisela)
#=========================#
binding.pry

puts "Gains!"
