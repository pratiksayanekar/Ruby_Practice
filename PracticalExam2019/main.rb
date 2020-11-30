require_relative  'point.rb'
require_relative  'bus_stop.rb'
require_relative 'bus_stops.rb'
require_relative 'routes.rb'
require_relative 'route.rb'

bus_stops = BusStops.new

IO.foreach('./input_files/stops.txt') do |line|
  data = line.split
  new_bus_stop = BusStop.new(data[1].to_i, data[0], Point.new(data[2].to_f, data[3].to_f))
  bus_stops.add_bus_stop(new_bus_stop)
end

bus_stops.sort_by_name!
puts bus_stops.to_s

puts "*"*20
r = Routes.new

IO.foreach('./input_files/routes.txt') do |line|
  data = line.split
  number_of_stops = []
  i = 1
  while i < data.size
    number_of_stops << bus_stops.get_bus_stop(data[i].to_i)
    i += 1
  end
  #puts number_of_stops
  r.add_route(Route.new(data[0].to_i, number_of_stops))
end

puts r.to_s

