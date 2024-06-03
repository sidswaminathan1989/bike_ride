require 'pry'

class Biker

  attr_accessor :name, :max_distance, :rides, :acceptable_terrain

  def initialize(name, max_distance)
    @name = name
    @max_distance = max_distance
    @rides = {}
    @acceptable_terrain = []
  end

  def learn_terrain!(terrain)
    @acceptable_terrain << terrain
  end

  def log_ride(ride, time)
    
    @rides[ride] ||= [] 
    @rides[ride] << time 
  end
end

# binding.pry