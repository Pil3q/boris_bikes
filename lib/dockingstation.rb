class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise "there are no bikes" if @bikes == []
    @bikes[0]
  end

  def dock(bike)
    if full?
      raise 'dock is full'
    else
      @bikes << bike
      @bikes
    end
  end

  def full?
    if @bikes.length >= 20
      true
    else
      false
    end
  end
end
