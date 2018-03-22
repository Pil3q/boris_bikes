class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise "there are no bikes" if @bikes == []
    @bikes
  end

  def dock(bike)
    @bikes = bike
    raise "dock is full" if @bike ==  bike
    @bike = bike
  end
end
