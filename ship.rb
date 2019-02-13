# Ship
# x and y represent the coordinate of the center of the ship.
# For example, when y is 900, then the nose of the ship is at
# coordinate (x, y - height / 2).

class Ship

  attr_reader :artillery

  WIDTH = 100
  HEIGHT = 200

  def initialize(x, y)
    @x = x
    @y = y
    @artillery = Artillery.new
  end

  def move_left
    @x -= 5
  end

  def move_right
    @x += 5
  end

  def draw
    # Ignore this
  end

  def fire_missile
    @artillery.fire(@x, nose_of_ship)
  end

  def move_missiles
    @artillery.move
  end

  private

  def nose_of_ship
    @y - HEIGHT / 2
  end

end


=begin
Reflecting on Principle
-----------------------
1. What does the OOD promise to give us, as programmers?
2. What does Martin's SOLID acronym stand for? (Just expand the acronym.)
3. True or False: It is our professional responsibility to always spend time designing before writing our code (designing now rather than later).
4. In Metz' TRUE acronym, what does the E stand for and what does it mean?
5. How does applying SRP naturally lead to good design?
=end
