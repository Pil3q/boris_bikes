class DockingStation
  attr_reader :bikes
  attr_reader :capacity
  DEFAULT_CAPACITY = 20
  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    if empty?
      raise "there are no bikes"
    else
    @bikes[0]
    @bikes.delete_at(0)
    end
  end

  def dock(bike)
    if full?
      raise 'dock is full'
    else
      @bikes << bike
      @bikes
    end
  end
  private

  def full?
    @bikes.length >=  capacity
  end

  def empty?
    @bikes.empty?
  end

end
