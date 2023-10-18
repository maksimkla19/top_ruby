
class Station

  attr_reader :name, :trains

  def initialize(name)
    @name = name
    @trains = []
  end

  def arrive(train)
    trains.push(train)
  end

  def depart(train)
    trains.delete(train)
  end

  def trains_by_type
    types = {}
    trains.select { |train| types[trains.count].nil? ? types[trains.count] = 1 : types[train.count] += 1 }
    types
  end

end
