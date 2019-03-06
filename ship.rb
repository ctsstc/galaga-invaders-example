class Ship
  include Drawable
  include Damageable

  def initialize(args)
    @location = args.fetch[:location]
    start_life(args.fetch[:hit_points])
    @sprite = args.fetch[:sprite]
  end

end
