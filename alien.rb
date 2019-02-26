require_relative 'missile'

class Alien

  WIDTH = 50
  HEIGHT = 50

  attr_accessor :location
  attr_reader :missile_velocity

  def initialize
    @location = Vector.new(200, 200)
    @missile_velocity = 10
  end

  def muzzle_location
    Vector.new(location.x, bottom_edge)
  end

  def move
  end

  def draw
    puts self
  end

  def to_s
    "👾 (#{location})"
  end

  def bottom_edge
    location.y + half_height
  end

  private

  def half_height
    HEIGHT / 2
  end

end
