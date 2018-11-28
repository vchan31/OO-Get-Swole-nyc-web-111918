class Gym
 ALL = []

  attr_reader :name

  def initialize(name)
    @name = name
    ALL << self

  end

  def self.all
    ALL
  end

  def memberships
    #Access all memberships => [Memberships]
    #determine wheter or not the membership belongs to this gym (self)
    Membership.all.select do |m|
      m.gym == self
    end
  end

def lifters_at_my_gym
  self.memberships.map do |lift_members|
    lift_members.lifter

end
end

def self.lifters_at_specific_gym(gym)
  gym.memberships.map do |lift_members|
    lift_members.lifter
  end
end

def total_lift_of_members
  total = 0
  
  all_lifters = self.lifters_at_my_gym

  all_lifters.each do |lifters|
    total += lifters.lift_total
  end
total
  end

end
