
class Artillery

  def initialize()
    @missiles = []
  end

  def fire(x, y)
    @missiles << Missile.new(x, y)
  end

  def move
    @missiles.each(&:move)
  end

  def draw
    @missiles.each(&:draw)
  end

end
