class Fort < Structure
  include Drawable

  def initialize(args)
    super
    @sprite = args.fetch[:sprite]
  end

end
