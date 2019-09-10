class BusStop

attr_accessor :name, :queue

  def initialize(name, queue=[])
    @name = name
    @queue = queue
  end

  def add_to_queue(new_passenger)
    @queue.push(new_passenger)
    return @queue.count
  end

  # def pick_up_from_stop(the_queue)
  #   @passenger.push(the_queue)
  #   return @passenger.count
  # end

end
