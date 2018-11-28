require 'pry'
require_relative './gym'
require_relative './lifter'
require_relative './membership'


#name, lift_total
lift1 = Lifter.new('Mike', 315)
lift2 = Lifter.new('Mike Cheung', 450)
lift3 = Lifter.new('Dan', 135)

g1 = Gym.new ("Golds")
g2 = Gym.new ("Equinox")
g3 = Gym.new ("New_York_Sportsclub")

#cost, lifter, gym
m1 = Membership.new(150,lift1,g1)
m2 = Membership.new(200,lift2,g2)
m3 = Membership.new(100,lift3,g3)
m4 = Membership.new(500,lift1,g2)


binding.pry