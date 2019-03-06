class Alien
  include Drawable
  include Damageable

  def initialize(args)
    @location = args.fetch[:location]
    @hit_points = args.fetch[:hit_points]
    @sprite = args.fetch[:sprite]
  end

end
