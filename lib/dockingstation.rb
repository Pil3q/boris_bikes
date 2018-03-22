class DockingStation
  attr_reader :bike

  def release_bike
    raise "there are no bikes" if @bike == nil
    @bike
  end

  def dock(bike)
    @bike = bike
  end
end
