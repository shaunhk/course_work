class Bus

  def initialize(route, destination)
    @route = route
    @destination = destination
    @passengers = []
  end

  def drive
    return "Brum BRUM!"
  end

  def count_passengers
    return @passengers.size()
  end

  def add_passenger(person)

    @passengers.push(person)
  end

end
