class BusStop

  attr_reader= :name, :queue

  def initialize(name, queue)
    @name = name
    @queue = queue
  end

  def queue_count
    @queue.count
  end

  def join_queue(passenger)
    @queue.push(passenger)
  end

  def people_in_the_queue
    for person in @queue
      return person
    end
  end

  
  def clear_queue()
    @queue.clear()
  end


end
