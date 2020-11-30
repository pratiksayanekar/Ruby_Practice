class Point
  attr_reader :x, :y
  def initialize(x,y)
    @x, @y = x,y
  end

  def to_s
    "X-Coordinates: #{@x} and Y-Coordinates: #{@y}"
  end

end
