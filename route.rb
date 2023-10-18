class Route

  attr_reader :start, :finish, :points

  def initialize(start, finish)
    @start = start
    @finish = finish
    @points = []
  end

  def route
    [@start, @points, @finish].flatten.compact
  end

  def add(station)
    points.push(station)
  end

  def delete(station)
    points.delete(station)
  end

end
