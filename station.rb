
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

  def trains_by_type(type)
    trains.select { |train| train.type == type }.count
  end  def initialize(number, type = :freight, wagons = 0)
      @number = number
      @type = type
      @wagons = wagons
      @speed = 0
    end

end
