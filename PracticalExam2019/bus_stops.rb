# frozen_string_literal: true
class BusStops

  def initialize
    @bus_stops = []
  end

  def add_bus_stop(new_stop)
    @bus_stops << new_stop
  end

  def sort_by_name!
    #@bus_stops = @bus_stops.each { |b| b.<=>(b) }
    @bus_stops.sort_by!(&:name)
  end

  def get_bus_stop(id)
    @bus_stops.each do |b|
      if(b.id == id)
        return b
      end
    end
  end

  def to_s
    @bus_stops.each(&:to_s)
  end

end
