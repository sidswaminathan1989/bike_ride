require 'pry'

class Biker

  attr_accessor :name, :max_distance, :rides, :acceptable_terrain

  def initialize(name, max_distance)
    @name = name
    @max_distance = max_distance
    @rides = {}
    @acceptable_terrain = []
  end
end

# binding.pry