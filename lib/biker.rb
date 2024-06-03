require 'pry'

class Biker

  attr_accessor :name, :max_distance

  def initialize(name, max_distance)
    @name = name
    @max_distance = max_distance
    @rides = {}
    @acceptable_terrain = []
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