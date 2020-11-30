class Routes

  def initialize
    @routes = []
  end

  def add_route(new_route)
    @routes << new_route
  end

  def to_s
    @routes.each(&:to_s)
  end

end
