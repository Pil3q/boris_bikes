class Van
  attr_accessor :van_storage
  def initialize
    @van_storage = []
  end
  def take_from_station(docking_station)
    docking_station.bikes.each{ |bike| @van_storage << bike if bike.status == false  }
    docking_station.bikes.delete_if{ |bike| bike.status == false}
    @van_storage
  end
  def deliver_to_garage(garage)
    @van_storage.each { |bike| garage.garage_storage << bike }
    @van_storage.clear
  end
end
