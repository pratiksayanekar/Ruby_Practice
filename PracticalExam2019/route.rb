
class Route
  def initialize(id, sequence)
    @id, @sequence_of_stops = id, sequence
  end

  def length_of_route
    length = 0
    i = 1
    while i < @sequence_of_stops.size
      x1, y1 = @sequence_of_stops[i-1].point.x , @sequence_of_stops[i-1].point.y
      x2 , y2 = @sequence_of_stops[i].point.x , @sequence_of_stops[i].point.y
      length += Math.sqrt( (x1 - x2)**2 + (y1 - y2)**2)
      i += 1
    end
    length.round(2)
  end


  def to_s
    str = "Id of route: #{@id} , number of stops:"
    @sequence_of_stops.each { |s| str += "#{s.name} " }
    str += "lenght of route: #{length_of_route}"
    return str
  end

end
