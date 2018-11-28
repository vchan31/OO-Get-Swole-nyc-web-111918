require 'pry'

class Lifter
  attr_reader :name, :lift_total

@@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all << self
  end

def self.all
  @@all
end
  

  def memberships
    #Access membership => [memberships]
    #Select all memberships for specific member
    Membership.all.select do |m|
      #compare whether or not lifter property == this lifter
      m.lifter == self
    end

  end

  def gyms
    #Access the Memberships.all array
    #Determine whether or not the memberships are mine/lifters
    my_memberships = self.memberships
    #create array of gyms from the memberships array
    my_memberships.map do |m|
      m.gym
    end
  end

  def self.average_lift
    total = 0.0
    count = 0
      self.all.each do |lifter|
        total += lifter.lift_total
        count += 1
      end
    total / count

  end

  def total_cost
    total = 0
    self.memberships.each do |gym_cost|
      total += gym_cost.cost
    end
    total
  end

  def sign_new_gym(gym,cost)
    Membership.new(cost,self,gym)
  end

end
