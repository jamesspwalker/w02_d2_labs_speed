class Bus

  attr_reader :number, :destination, :passengers

  def initialize(number, destination, passengers)
    @number = number
    @destination = destination
    @passengers = passengers
  end

  def drive_sound()
    return "Brum brum"
  end

  def passenger_count()
    return @passengers.count()
  end

  def pick_up(passenger)
    @passengers.push(passenger)
  end

  def drop_off(passenger)
    @passengers.delete(passenger)
    return @passengers
  end

  def remove_all_passengers
    @passengers.clear
  end

  def pick_up_all_passengers(bus_stop)
    @passengers.push(bus_stop.people_in_the_queue)
    bus_stop.clear_queue
  end

end
