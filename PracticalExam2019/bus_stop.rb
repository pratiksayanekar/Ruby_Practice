class BusStop

  attr_reader :id , :point
  attr_accessor :name

  def initialize(id, name, point)
    @id, @name, @point = id, name, point
  end

  include Comparable

  def <=>(other)
    if @name > other.name
      1
    elsif @name < other.name
      -1
    else
      0
    end
  end

  def to_s
    "BusID: #{@id}, name: #{@name} , " + @point.to_s
  end

end
