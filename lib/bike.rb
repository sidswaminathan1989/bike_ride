require 'pry'

class Bike

  attr_accessor :name, :distance, :loop, :terrain

  def initialize(initObj)
    @name = initObj[:name]
    @distance = initObj[:distance]
    @loop = initObj[:loop]
    @terrain = initObj[:terrain]
  end

  def loop?
    return @loop
  end

  def total_distance
    if (@loop)
        return @distance
    else
        return @distance * 2
    end
  end
end

# binding.pry