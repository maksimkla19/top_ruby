
class Train

  attr_reader :speed, :wagons, :type

  def initialize(number, type = :freight, wagons = 0)
    @number = number
    @type = type
    @wagons = wagons
    @speed = 0
  end  def initialize(number, type = :freight, wagons = 0)
      @number = number
      @type = type
      @wagons = wagons
      @speed = 0
    end

  def set_route(route)
    @route = route
    @station_index = 0
    current_station.arrive(self)
  end

  def current_station
    @route.stations[@station_index]
  end


  def next_station
     return unless @route
     @route.route[@station_index + 1]
   end

   def previous_station
     return unless @route
     @route.route[@station_index - 1]
   end

   def move_forward
     return unless @route && next_station
     current_station.depart(self)
     @station_index += 1
     current_station.arrive(self)
   end

   def move_back
     return unless @route && prev_station
     current_station.depart(self)
     @station_index -= 1
     current_station.arrive(self)
   end


   def wagon_add
     return if moving?
     @wagons += 1
   end

   def wagon_delete
     return if moving?
     @wagons == 0 ? 0 : @wagons -= 1
   end

   def moving?
     self.speed != 0
   end

   def speed_up
     @speed > 120 ? 120 : @speed += 20
   end

   def speed_down
     @speed <= 0 ? 0 : @speed -= 20
   end

   def stop
     @speed = 0
   end

 end
