# Ship
# x and y represent the coordinate of the center of the ship.
# For example, when y is 900, then the nose of the ship is at
# coordinate (x, y - height / 2).

class Ship

  attr_reader :artillery

  WIDTH = 100
  HEIGHT = 200

  def initialize(coordinate)
    @coordinate = coordinate
    @artillery = Artillery.new
  end

  def move_left
    @coordinate.x -= 5
  end

  def move_right
    @coordinate.x += 5
  end

  def draw
    # Ignore this
  end

  def fire_missile
    @artillery.fire(@x, nose_of_ship)
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
  - A smoother tomorrow, where we can implement new features without fear of a big spaghetti mess.
  - OOD is about managing dependencies.
2. What does Martin's SOLID acronym stand for? (Just expand the acronym.)
  - Single Responsibility
  - Open-Closed
  - Liskov Substitution
  - Interface Segregation
  - Dependency Inversion
3. True or False: It is our professional responsibility to always spend time designing before writing our code (designing now rather than later).
  - True
4. In Metz' TRUE acronym, what does the E stand for and what does it mean?
  - Exemplary: the code itself should encourage future developers how change it to continue the TRUE qualities.
5. How does applying SRP naturally lead to good design?
  - Something like a class will do only what it needs to do
    - This results in smaller code for that class that is more easily digestible.
  - If a class has more than one responsibility it is hard to reuse.
  - Tightly coupled responsibilities that do too much can lead to duplicate code because you're not able to use only what you need
=end
