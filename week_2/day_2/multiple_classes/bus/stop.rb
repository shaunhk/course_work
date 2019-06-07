class BusStop

  def initialize(name)
    @name = name
    @queue = []
  end

  def count_people
    return @queue.length
  end

  def add_person(person)
    @queue.push(person)
  end

end
