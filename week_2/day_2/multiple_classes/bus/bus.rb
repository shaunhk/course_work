# class Bus
#
#   attr_reader :route, :destination
#
#   def initialize(route, destination)
#     @route = route
#     @destination = destination
#   end
#
#   def drive
#     return "Brum BRUM!"
#   end
#
# end

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

  def remove_passenger(person)
    @passengers.delete(person)
  end

  def empty
    @passengers = []
  end
end
