class Bus

attr_accessor :route, :destination, :passenger

  def initialize(route, destination, passenger=[])
    @route = route
    @destination = destination
    @passenger = passenger
  end

  def drive
    return "Broom broom"
  end

  def number_of_passengers
    return @passenger.count
  end

  def pick_up(new_passenger)
    @passenger.push(new_passenger)
  end

  def drop_off(old_passenger)
    @passenger.delete(old_passenger)
  end

  def empty_bus
    @passenger.clear
  end

  def pick_up_from_stop(full_queue)
    @passenger.push(full_queue)
  end


end
