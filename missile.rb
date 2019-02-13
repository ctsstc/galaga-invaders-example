
class Missile
  attr_accessor :x, :y

  MOVE_SPEED = 10

  def initialize(x, y)
    @x = x
    @y = y
  end

  def move
    @y -= MOVE_SPEED
  end

  def draw
    # TODO: implement
    # Ignore this
  end

end
