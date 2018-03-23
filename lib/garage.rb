class Garage
  attr_accessor :garage_storage
  def initialize
    @garage_storage = []
  end
  def fix_bikes
    @garage_storage.map { |bike| bike.status = true }
  end
end
