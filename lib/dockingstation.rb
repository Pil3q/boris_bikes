class DockingStation
  attr_reader :bike

  def release_bike
    raise "there are no bikes" if @bike == nil
    @bike
  end

  def dock(bike)
    raise "dock is full" if @bike ==  bike
    @bike = bike
  end
end
