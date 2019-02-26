#!/usr/bin/env ruby

require_relative 'alien'
require_relative 'ship'
require_relative 'missile_collection'

class GalagaInvaders

  WIDTH = 1920
  HEIGHT = 1080

  attr_accessor :ship, :alien, :missiles

  def initialize
    @caption = "Galaga Invaders"
    @ship = Ship.new(WIDTH, HEIGHT)
    @alien = Alien.new
    @missiles = MissileCollection.new
  end

  def update
    missiles.update
  end

  def draw
    ship.draw
    alien.draw
    missiles.draw
  end

  def show
    while (true) do
      update
      draw
      key_pressed(gets.chomp) # Simulating a key interrupt.
    end
  end

  def key_pressed(key)
    if key == 'a'
      ship.move_left
    elsif key == 'd'
      ship.move_right
    elsif key == ' '
      missiles.add_from(ship)
    end
    if key == 'p'
      missiles.add_from(alien)
    end
  end

end

GalagaInvaders.new.show

=begin
Reflecting on Principle
-----------------------
1. What is "duck typing" and what does it have to do with polymorphism?
  - "If it quacks like a duck and walks like a duck then it probably tastes like a duck too."
  - Duck typing is when an object implements the expected methods to pass messages with.
    - This ties in to polymorphism where you could have several different objects but
      they respond to the same message.
  - The message call doesn't require the caller to know of the implementation.
    - It just asks that the duck quacks and it does.
  - "Place the trust in the ducks™" #trustworthyObjects
2. What are some common code smells that indicate the need for relying on a
   "duck type" rather than a concrete class?
   - The big one is a switch statement that checks what the class type is.
   - In Ruby there are also some trigger words such as: `kind_of?`, `is_a?`, `responds_to?`
3. True or False: Abstractions like duck typing make code explicitly easier to
   understand, vs. using concrete types.
   - False; it requires more understanding, but it's easier to change and makes for a better tomorrow.
=end
